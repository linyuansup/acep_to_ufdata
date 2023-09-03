// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ace _$AceFromJson(Map<String, dynamic> json) => Ace(
      beatsPerBar: json['beatsPerBar'] as int,
      duration: json['duration'] as int,
      master: Master.fromJson(json['master'] as Map<String, dynamic>),
      tempos: (json['tempos'] as List<dynamic>)
          .map((e) => Tempos.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => Tracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      colorIndex: json['colorIndex'] as int? ?? 4,
      loop: json['loop'] as bool? ?? false,
      loopEnd: json['loopEnd'] as int? ?? 0,
      loopStart: json['loopStart'] as int? ?? 0,
      mergedPatternIndex: json['mergedPatternIndex'] as int? ?? 0,
      pianoCells: json['pianoCells'] as int? ?? 2147483646,
      recordPatternIndex: json['recordPatternIndex'] as int? ?? 0,
      singerLibraryId: json['singerLibraryId'] as String? ?? "1200001076",
      trackCells: json['trackCells'] as int? ?? 2147483646,
      trackControlPanelW: json['trackControlPanelW'] as int? ?? 0,
      version: json['version'] as int? ?? 5,
    );

Map<String, dynamic> _$AceToJson(Ace instance) => <String, dynamic>{
      'beatsPerBar': instance.beatsPerBar,
      'colorIndex': instance.colorIndex,
      'duration': instance.duration,
      'loop': instance.loop,
      'loopEnd': instance.loopEnd,
      'loopStart': instance.loopStart,
      'master': instance.master,
      'mergedPatternIndex': instance.mergedPatternIndex,
      'pianoCells': instance.pianoCells,
      'recordPatternIndex': instance.recordPatternIndex,
      'singerLibraryId': instance.singerLibraryId,
      'tempos': instance.tempos,
      'trackCells': instance.trackCells,
      'trackControlPanelW': instance.trackControlPanelW,
      'tracks': instance.tracks,
      'version': instance.version,
    };

Master _$MasterFromJson(Map<String, dynamic> json) => Master(
      gain: json['gain'] as int,
    );

Map<String, dynamic> _$MasterToJson(Master instance) => <String, dynamic>{
      'gain': instance.gain,
    };

Tempos _$TemposFromJson(Map<String, dynamic> json) => Tempos(
      bpm: (json['bpm'] as num).toDouble(),
      position: json['position'] as int,
      isLerp: json['isLerp'] as bool? ?? false,
    );

Map<String, dynamic> _$TemposToJson(Tempos instance) => <String, dynamic>{
      'bpm': instance.bpm,
      'isLerp': instance.isLerp,
      'position': instance.position,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      gain: (json['gain'] as num).toDouble(),
      language: json['language'] as String?,
      listen: json['listen'] as bool,
      mute: json['mute'] as bool,
      name: json['name'] as String,
      pan: json['pan'] as int,
      patterns: (json['patterns'] as List<dynamic>)
          .map((e) => Patterns.fromJson(e as Map<String, dynamic>))
          .toList(),
      solo: json['solo'] as bool,
      channel: json['channel'] as int? ?? 0,
      color: json['color'] as String? ?? "#b17ef3",
      record: json['record'] as bool? ?? false,
      type: json['type'] as String? ?? "sing",
    )..singer = json['singer'] == null
        ? null
        : Singer.fromJson(json['singer'] as Map<String, dynamic>);

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'channel': instance.channel,
      'color': instance.color,
      'gain': instance.gain,
      'language': instance.language,
      'listen': instance.listen,
      'mute': instance.mute,
      'name': instance.name,
      'pan': instance.pan,
      'patterns': instance.patterns,
      'record': instance.record,
      'singer': instance.singer,
      'solo': instance.solo,
      'type': instance.type,
    };

Patterns _$PatternsFromJson(Map<String, dynamic> json) => Patterns(
      clipDur: json['clipDur'] as int,
      clipPos: json['clipPos'] as int,
      name: json['name'] as String,
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => Notes.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: json['parameters'] == null
          ? null
          : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      dur: json['dur'] as int? ?? 218880,
      pos: json['pos'] as int? ?? -30720,
    );

Map<String, dynamic> _$PatternsToJson(Patterns instance) => <String, dynamic>{
      'clipDur': instance.clipDur,
      'clipPos': instance.clipPos,
      'dur': instance.dur,
      'name': instance.name,
      'notes': instance.notes,
      'parameters': instance.parameters,
      'pos': instance.pos,
    };

Notes _$NotesFromJson(Map<String, dynamic> json) => Notes(
      dur: json['dur'] as int,
      language: json['language'] as String,
      lyric: json['lyric'] as String,
      pitch: json['pitch'] as int,
      pos: json['pos'] as int,
      vibrato: json['vibrato'] == null
          ? null
          : Vibrato.fromJson(json['vibrato'] as Map<String, dynamic>),
      brLen: json['brLen'] as int? ?? 0,
      headConsonants: (json['headConsonants'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      syllable: json['syllable'] as String? ?? "",
      tailConsonants: (json['tailConsonants'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NotesToJson(Notes instance) => <String, dynamic>{
      'brLen': instance.brLen,
      'dur': instance.dur,
      'headConsonants': instance.headConsonants,
      'language': instance.language,
      'lyric': instance.lyric,
      'pitch': instance.pitch,
      'pos': instance.pos,
      'syllable': instance.syllable,
      'tailConsonants': instance.tailConsonants,
      'vibrato': instance.vibrato,
    };

Vibrato _$VibratoFromJson(Map<String, dynamic> json) => Vibrato(
      amplitude: (json['amplitude'] as num).toDouble(),
      attackLevel: (json['attackLevel'] as num).toDouble(),
      attackRatio: (json['attackRatio'] as num).toDouble(),
      frequency: (json['frequency'] as num).toDouble(),
      phase: json['phase'] as int,
      releaseLevel: (json['releaseLevel'] as num).toDouble(),
      releaseRatio: (json['releaseRatio'] as num).toDouble(),
      startPos: json['startPos'] as int,
    );

Map<String, dynamic> _$VibratoToJson(Vibrato instance) => <String, dynamic>{
      'amplitude': instance.amplitude,
      'attackLevel': instance.attackLevel,
      'attackRatio': instance.attackRatio,
      'frequency': instance.frequency,
      'phase': instance.phase,
      'releaseLevel': instance.releaseLevel,
      'releaseRatio': instance.releaseRatio,
      'startPos': instance.startPos,
    };

Parameters _$ParametersFromJson(Map<String, dynamic> json) => Parameters(
      pitchDelta: (json['pitchDelta'] as List<dynamic>)
          .map((e) => Param.fromJson(e as Map<String, dynamic>))
          .toList(),
      breathiness: (json['breathiness'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      energy: (json['energy'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      falsetto: (json['falsetto'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gender: (json['gender'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      realBreathiness: (json['realBreathiness'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      realEnergy: (json['realEnergy'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      realFalsetto: (json['realFalsetto'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      realTension: (json['realTension'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tension: (json['tension'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vuv: (json['vuv'] as List<dynamic>?)
              ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ParametersToJson(Parameters instance) =>
    <String, dynamic>{
      'breathiness': instance.breathiness,
      'energy': instance.energy,
      'falsetto': instance.falsetto,
      'gender': instance.gender,
      'pitchDelta': instance.pitchDelta,
      'realBreathiness': instance.realBreathiness,
      'realEnergy': instance.realEnergy,
      'realFalsetto': instance.realFalsetto,
      'realTension': instance.realTension,
      'tension': instance.tension,
      'vuv': instance.vuv,
    };

Param _$ParamFromJson(Map<String, dynamic> json) => Param(
      offset: json['offset'] as int,
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
      type: json['type'] as String? ?? 'data',
    );

Map<String, dynamic> _$ParamToJson(Param instance) => <String, dynamic>{
      'offset': instance.offset,
      'type': instance.type,
      'values': instance.values,
    };

Singer _$SingerFromJson(Map<String, dynamic> json) => Singer(
      head: json['head'] as int? ?? -1,
      id: json['id'] as int? ?? 18,
      name: json['name'] as String? ?? "",
      router: json['router'] as int? ?? 1,
      state: json['state'] as String? ?? "Unmixed",
    )..composition = (json['composition'] as List<dynamic>)
        .map((e) => Composition.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$SingerToJson(Singer instance) => <String, dynamic>{
      'composition': instance.composition,
      'head': instance.head,
      'id': instance.id,
      'name': instance.name,
      'router': instance.router,
      'state': instance.state,
    };

Composition _$CompositionFromJson(Map<String, dynamic> json) => Composition(
      code: json['code'] as int? ?? 16,
      lock: json['lock'] as bool? ?? true,
      style: json['style'] as int? ?? 1,
      timbre: json['timbre'] as int? ?? 1,
    );

Map<String, dynamic> _$CompositionToJson(Composition instance) =>
    <String, dynamic>{
      'code': instance.code,
      'lock': instance.lock,
      'style': instance.style,
      'timbre': instance.timbre,
    };
