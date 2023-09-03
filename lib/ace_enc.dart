import 'package:json_annotation/json_annotation.dart';

part 'ace_enc.g.dart';

@JsonSerializable()
class AceEnc {
  final String compressMethod;
  final String content;
  final DebugInfo debugInfo;
  final String salt;
  final int version;

  AceEnc(
      {required this.compressMethod,
      required this.content,
      required this.debugInfo,
      required this.salt,
      required this.version});

  factory AceEnc.fromJson(Map<String, dynamic> json) =>
      _$AceEncFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AceEncToJson(this);
}

@JsonSerializable()
class DebugInfo {
  String os;
  String platform;
  String version;

  DebugInfo({required this.os, required this.platform, required this.version});

  factory DebugInfo.fromJson(Map<String, dynamic> json) =>
      _$DebugInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DebugInfoToJson(this);
}
