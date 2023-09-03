// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ace_enc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AceEnc _$AceEncFromJson(Map<String, dynamic> json) => AceEnc(
      compressMethod: json['compressMethod'] as String,
      content: json['content'] as String,
      debugInfo: DebugInfo.fromJson(json['debugInfo'] as Map<String, dynamic>),
      salt: json['salt'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$AceEncToJson(AceEnc instance) => <String, dynamic>{
      'compressMethod': instance.compressMethod,
      'content': instance.content,
      'debugInfo': instance.debugInfo,
      'salt': instance.salt,
      'version': instance.version,
    };

DebugInfo _$DebugInfoFromJson(Map<String, dynamic> json) => DebugInfo(
      os: json['os'] as String,
      platform: json['platform'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$DebugInfoToJson(DebugInfo instance) => <String, dynamic>{
      'os': instance.os,
      'platform': instance.platform,
      'version': instance.version,
    };
