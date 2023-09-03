import 'package:json_annotation/json_annotation.dart';

part 'ace.g.dart';

@JsonSerializable()
class Ace {
  int beatsPerBar;
  int colorIndex;
  int duration;
  bool loop;
  int loopEnd;
  int loopStart;
  Master master;
  int mergedPatternIndex;
  int pianoCells;
  int recordPatternIndex;
  String singerLibraryId;
  List<Tempos> tempos;
  int trackCells;
  int trackControlPanelW;
  List<Tracks> tracks;
  int version;

  Ace({
    required this.beatsPerBar,
    required this.duration,
    required this.master,
    required this.tempos,
    required this.tracks,
    this.colorIndex = 4,
    this.loop = false,
    this.loopEnd = 0,
    this.loopStart = 0,
    this.mergedPatternIndex = 0,
    this.pianoCells = 2147483646,
    this.recordPatternIndex = 0,
    this.singerLibraryId = "1200001076",
    this.trackCells = 2147483646,
    this.trackControlPanelW = 0,
    this.version = 5,
  });

  factory Ace.fromJson(Map<String, dynamic> json) => _$AceFromJson(json);

  Map<String, dynamic> toJson() => _$AceToJson(this);
}

@JsonSerializable()
class Master {
  int gain;

  Master({required this.gain});

  factory Master.fromJson(Map<String, dynamic> json) => _$MasterFromJson(json);

  Map<String, dynamic> toJson() => _$MasterToJson(this);
}

@JsonSerializable()
class Tempos {
  double bpm;
  bool isLerp;
  int position;

  Tempos({required this.bpm, required this.position, this.isLerp = false});

  factory Tempos.fromJson(Map<String, dynamic> json) => _$TemposFromJson(json);

  Map<String, dynamic> toJson() => _$TemposToJson(this);
}

@JsonSerializable()
class Tracks {
  int channel;
  String color;
  double gain;
  String? language;
  bool listen;
  bool mute;
  String name;
  int pan;
  List<Patterns> patterns;
  bool record;
  Singer? singer;
  bool solo;
  String type;

  Tracks(
      {required this.gain,
      required this.language,
      required this.listen,
      required this.mute,
      required this.name,
      required this.pan,
      required this.patterns,
      required this.solo,
      this.channel = 0,
      this.color = "#b17ef3",
      this.record = false,
      this.type = "sing"})
      : singer = Singer();

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Patterns {
  int clipDur;
  int clipPos;
  int dur;
  String name;
  List<Notes>? notes;
  Parameters? parameters;
  int pos;

  Patterns({
    required this.clipDur,
    required this.clipPos,
    required this.name,
    required this.notes,
    required this.parameters,
    this.dur = 218880,
    this.pos = -30720,
  });

  factory Patterns.fromJson(Map<String, dynamic> json) =>
      _$PatternsFromJson(json);

  Map<String, dynamic> toJson() => _$PatternsToJson(this);
}

@JsonSerializable()
class Notes {
  int brLen;
  int dur;
  List<int> headConsonants;
  String language;
  String lyric;
  int pitch;
  int pos;
  String syllable;
  List<Object> tailConsonants;
  Vibrato? vibrato;

  Notes({
    required this.dur,
    required this.language,
    required this.lyric,
    required this.pitch,
    required this.pos,
    this.vibrato,
    this.brLen = 0,
    this.headConsonants = const [],
    this.syllable = "",
    this.tailConsonants = const [],
  });

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);

  Map<String, dynamic> toJson() => _$NotesToJson(this);
}

@JsonSerializable()
class Vibrato {
  double amplitude;
  double attackLevel;
  double attackRatio;
  double frequency;
  int phase;
  double releaseLevel;
  double releaseRatio;
  int startPos;

  Vibrato(
      {required this.amplitude,
      required this.attackLevel,
      required this.attackRatio,
      required this.frequency,
      required this.phase,
      required this.releaseLevel,
      required this.releaseRatio,
      required this.startPos});

  factory Vibrato.fromJson(Map<String, dynamic> json) =>
      _$VibratoFromJson(json);

  Map<String, dynamic> toJson() => _$VibratoToJson(this);
}

@JsonSerializable()
class Parameters {
  List<Param> breathiness;
  List<Param> energy;
  List<Param> falsetto;
  List<Param> gender;
  List<Param> pitchDelta;
  List<Param> realBreathiness;
  List<Param> realEnergy;
  List<Param> realFalsetto;
  List<Param> realTension;
  List<Param> tension;
  List<Param> vuv;

  Parameters(
      {required this.pitchDelta,
      this.breathiness = const [],
      this.energy = const [],
      this.falsetto = const [],
      this.gender = const [],
      this.realBreathiness = const [],
      this.realEnergy = const [],
      this.realFalsetto = const [],
      this.realTension = const [],
      this.tension = const [],
      this.vuv = const []});

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);

  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}

@JsonSerializable()
class Param {
  int offset;
  String type;
  List<String> values;

  Param({required this.offset, required this.values, this.type = 'data'});

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);

  Map<String, dynamic> toJson() => _$ParamToJson(this);
}

@JsonSerializable()
class Singer {
  List<Composition> composition;
  int head;
  int id;
  String name;
  int router;
  String state;

  Singer(
      {this.head = -1,
      this.id = 18,
      this.name = "",
      this.router = 1,
      this.state = "Unmixed"})
      : composition = [Composition()];

  factory Singer.fromJson(Map<String, dynamic> json) => _$SingerFromJson(json);

  Map<String, dynamic> toJson() => _$SingerToJson(this);
}

@JsonSerializable()
class Composition {
  int code;
  bool lock;
  int style;
  int timbre;

  Composition(
      {this.code = 16, this.lock = true, this.style = 1, this.timbre = 1});

  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);

  Map<String, dynamic> toJson() => _$CompositionToJson(this);
}
