import 'package:json_annotation/json_annotation.dart';

part 'ufdata.g.dart';

@JsonSerializable()
class UfData {
  int formatVersion;
  Project project;

  UfData({required this.project}) : formatVersion = 1;

  factory UfData.fromJson(Map<String, dynamic> json) => _$UfDataFromJson(json);

  Map<String, dynamic> toJson() => _$UfDataToJson(this);
}

@JsonSerializable()
class Project {
  String name;
  List<Tracks> tracks;
  List<TimeSignatures> timeSignatures;
  List<Tempos> tempos;
  int measurePrefix;

  Project(
      {required this.name,
      required this.tracks,
      required this.timeSignatures,
      required this.tempos,
      this.measurePrefix = 0});

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class Tracks {
  String name;
  List<Notes> notes;
  Pitch? pitch;

  Tracks({required this.name, required this.notes, this.pitch});

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Notes {
  int key;
  int tickOn;
  int tickOff;
  String lyric;
  String phoneme;

  Notes(
      {required this.key,
      required this.tickOn,
      required this.tickOff,
      required this.lyric,
      this.phoneme = ""});

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);

  Map<String, dynamic> toJson() => _$NotesToJson(this);
}

@JsonSerializable()
class Pitch {
  List<int> ticks;
  List<double?> values;
  bool isAbsolute;

  Pitch({required this.ticks, required this.values, this.isAbsolute = false});

  factory Pitch.fromJson(Map<String, dynamic> json) => _$PitchFromJson(json);

  Map<String, dynamic> toJson() => _$PitchToJson(this);
}

@JsonSerializable()
class TimeSignatures {
  int measurePosition;
  int numerator;
  int denominator;

  TimeSignatures(
      {required this.measurePosition,
      required this.numerator,
      required this.denominator});

  factory TimeSignatures.fromJson(Map<String, dynamic> json) =>
      _$TimeSignaturesFromJson(json);

  Map<String, dynamic> toJson() => _$TimeSignaturesToJson(this);
}

@JsonSerializable()
class Tempos {
  int tickPosition;
  int bpm;

  Tempos({required this.tickPosition, required this.bpm});

  factory Tempos.fromJson(Map<String, dynamic> json) => _$TemposFromJson(json);

  Map<String, dynamic> toJson() => _$TemposToJson(this);
}
