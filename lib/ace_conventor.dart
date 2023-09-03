import 'dart:math';

import 'package:dart_test/ace.dart' as ace;
import 'package:dart_test/ufdata.dart' as uf;

extension AceExt on ace.Ace {
  uf.UfData? toUfData() {
    if (_preProcess()) {
      return uf.UfData(project: _getProject());
    }
    return null;
  }

  bool _preProcess() {
    for (final track in tracks) {
      for (var i = 0; i < track.patterns.length; i++) {
        final pattern = track.patterns[i];
        if (pattern.notes != null) {
          for (var j = 0; j < pattern.notes!.length; j++) {
            final note = pattern.notes![j];
            // remove note out of pattern
            if (note.pos < pattern.clipPos ||
                note.pos > pattern.clipPos + pattern.clipDur) {
              pattern.notes!.removeAt(j);
              continue;
            }
            // find if contain notes overlap
            if (j >= pattern.notes!.length - 2) {
              break;
            }
            if (note.pos + note.dur > pattern.notes![j + 1].pos) {
              return false;
            }
          }
        }
      }
    }
    return true;
  }

  uf.Project _getProject() {
    return uf.Project(
        // Default to Ace Project
        name: 'Ace Project',
        tracks: _getTracks(),
        timeSignatures: _getTimeSignatures(),
        tempos: _getTempos());
  }

  List<uf.Tracks> _getTracks() {
    List<uf.Tracks> ufTracks = [];
    for (final track in tracks) {
      ufTracks.add(_getTrack(track));
    }
    return ufTracks;
  }

  List<uf.TimeSignatures> _getTimeSignatures() {
    return [
      uf.TimeSignatures(
        measurePosition: 0,
        numerator: beatsPerBar,
        // acep doesn't contain denominator, default to 4
        denominator: 4,
      )
    ];
  }

  List<uf.Tempos> _getTempos() {
    List<uf.Tempos> result = [];
    for (final item in tempos) {
      result.add(uf.Tempos(
        // ufdata doesn't support double
        bpm: item.bpm.toInt(),
        tickPosition: item.position,
      ));
    }
    return result;
  }

  uf.Tracks _getTrack(ace.Tracks track) {
    return uf.Tracks(
        name: track.name,
        notes: _getNotes(track),
        pitch: _getTrackPitch(track));
  }

  List<uf.Notes> _getNotes(ace.Tracks track) {
    List<uf.Notes> notes = [];
    for (final pattern in track.patterns) {
      if (pattern.notes == null) {
        continue;
      }
      for (final note in pattern.notes!) {
        notes.add(uf.Notes(
          key: note.pitch,
          tickOn: note.pos,
          tickOff: note.pos + note.dur,
          lyric: note.lyric,
        ));
      }
    }
    return notes;
  }

  uf.Pitch _getTrackPitch(ace.Tracks track) {
    List<double?> values = [];
    List<int> ticks = [];
    if (track.patterns.isEmpty) {
      return uf.Pitch(ticks: ticks, values: values);
    }
    final lastPattern = track.patterns.last;
    final length = lastPattern.clipPos + lastPattern.clipDur;
    for (var i = 0; i < length; i++) {
      values.add(0);
      ticks.add(i);
    }
    for (final pattern in track.patterns) {
      // pd data doesn't need to add pattern offset
      if (pattern.parameters != null) {
        for (final pd in pattern.parameters!.pitchDelta) {
          for (var i = 0; i < pd.values.length; i++) {
            if (pd.offset + i >= values.length) {
              continue;
            }
            if (values[pd.offset + i] == 0) {
              values[pd.offset + i] = double.parse(pd.values[i]);
            }
          }
        }
      }
      if (pattern.notes != null) {
        for (final note in pattern.notes!) {
          // remake the consonant part
          int headLen = 0;
          for (final item in note.headConsonants) {
            headLen += item;
          }
          for (var i = note.pos - headLen; i < note.pos; i++) {
            values[i] = 0;
          }
          if (note.vibrato != null) {
            final vibrato = _getNoteVibrato(note);
            for (var i = 0; i < vibrato.length; i++) {
              if (note.pos + i >= values.length) {
                continue;
              }
              values[note.pos + i] = values[note.pos + i]! + vibrato[i];
            }
          }
        }
      }
    }
    // remove same path of pitch
    if (ticks.length > 1) {
      var slowIndex = 0;
      var fastIndex = 1;
      while (fastIndex < ticks.length) {
        if (values[slowIndex] != values[fastIndex]) {
          slowIndex++;
          ticks[slowIndex] = ticks[fastIndex];
          values[slowIndex] = values[fastIndex];
        }
        fastIndex++;
      }
      ticks.length = slowIndex + 1;
      values.length = slowIndex + 1;
    }
    return uf.Pitch(ticks: ticks, values: values);
  }

  List<double> _getNoteVibrato(ace.Notes note) {
    List<double> result = [];
    if (note.vibrato != null) {
      for (var posInNote = 0; posInNote < note.dur; posInNote++) {
        double value = 0;
        final posInVibrato = posInNote - note.vibrato!.startPos;
        if (posInVibrato > 0) {
          final vibrato = note.vibrato!;
          final x = posInNote - vibrato.startPos;
          value = (vibrato.amplitude / 2) *
              sin(((pi * vibrato.frequency) /
                      (4 * _getBpm(note.pos + posInNote)) *
                      x -
                  vibrato.phase * pi)) *
              _getRatio(note.dur - vibrato.startPos, vibrato, posInVibrato);
        }
        result.add(value);
      }
    }
    return result;
  }

  double _getRatio(int length, ace.Vibrato vibrato, int tick) {
    double attackFinishX = length * vibrato.attackRatio;
    double releaseStartX = length - length * vibrato.releaseRatio;
    if (tick < attackFinishX) {
      return vibrato.attackLevel / attackFinishX * tick;
    } else if (tick < releaseStartX) {
      return vibrato.attackLevel +
          (1 - vibrato.attackLevel) /
              (releaseStartX - attackFinishX) *
              (tick - attackFinishX);
    } else {
      return (length - tick) / (length - releaseStartX) * vibrato.releaseLevel;
    }
  }

  double _getBpm(int tick) {
    for (final tempo in tempos) {
      if (tick < tempo.position) {
        return tempo.bpm;
      }
    }
    return tempos.last.bpm;
  }
}
