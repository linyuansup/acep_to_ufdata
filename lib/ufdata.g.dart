// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ufdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UfData _$UfDataFromJson(Map<String, dynamic> json) => UfData(
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
    )..formatVersion = json['formatVersion'] as int;

Map<String, dynamic> _$UfDataToJson(UfData instance) => <String, dynamic>{
      'formatVersion': instance.formatVersion,
      'project': instance.project,
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      name: json['name'] as String,
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => Tracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeSignatures: (json['timeSignatures'] as List<dynamic>)
          .map((e) => TimeSignatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      tempos: (json['tempos'] as List<dynamic>)
          .map((e) => Tempos.fromJson(e as Map<String, dynamic>))
          .toList(),
      measurePrefix: json['measurePrefix'] as int? ?? 0,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'name': instance.name,
      'tracks': instance.tracks,
      'timeSignatures': instance.timeSignatures,
      'tempos': instance.tempos,
      'measurePrefix': instance.measurePrefix,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      name: json['name'] as String,
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Notes.fromJson(e as Map<String, dynamic>))
          .toList(),
      pitch: json['pitch'] == null
          ? null
          : Pitch.fromJson(json['pitch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'name': instance.name,
      'notes': instance.notes,
      'pitch': instance.pitch,
    };

Notes _$NotesFromJson(Map<String, dynamic> json) => Notes(
      key: json['key'] as int,
      tickOn: json['tickOn'] as int,
      tickOff: json['tickOff'] as int,
      lyric: json['lyric'] as String,
      phoneme: json['phoneme'] as String? ?? "",
    );

Map<String, dynamic> _$NotesToJson(Notes instance) => <String, dynamic>{
      'key': instance.key,
      'tickOn': instance.tickOn,
      'tickOff': instance.tickOff,
      'lyric': instance.lyric,
      'phoneme': instance.phoneme,
    };

Pitch _$PitchFromJson(Map<String, dynamic> json) => Pitch(
      ticks: (json['ticks'] as List<dynamic>).map((e) => e as int).toList(),
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      isAbsolute: json['isAbsolute'] as bool? ?? false,
    );

Map<String, dynamic> _$PitchToJson(Pitch instance) => <String, dynamic>{
      'ticks': instance.ticks,
      'values': instance.values,
      'isAbsolute': instance.isAbsolute,
    };

TimeSignatures _$TimeSignaturesFromJson(Map<String, dynamic> json) =>
    TimeSignatures(
      measurePosition: json['measurePosition'] as int,
      numerator: json['numerator'] as int,
      denominator: json['denominator'] as int,
    );

Map<String, dynamic> _$TimeSignaturesToJson(TimeSignatures instance) =>
    <String, dynamic>{
      'measurePosition': instance.measurePosition,
      'numerator': instance.numerator,
      'denominator': instance.denominator,
    };

Tempos _$TemposFromJson(Map<String, dynamic> json) => Tempos(
      tickPosition: json['tickPosition'] as int,
      bpm: json['bpm'] as int,
    );

Map<String, dynamic> _$TemposToJson(Tempos instance) => <String, dynamic>{
      'tickPosition': instance.tickPosition,
      'bpm': instance.bpm,
    };
