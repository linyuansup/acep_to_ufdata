import 'dart:convert';
import 'dart:io';

import 'package:dart_test/ace.dart';
import 'package:dart_test/ace_conventor.dart';
import 'package:dart_test/ace_enc.dart';
import 'package:es_compression/zstd.dart';

void main() {
  final aceFile = File("D:\\93601\\Desktop\\test.acep");
  aceFile.readAsString().then((value) {
    final enc = AceEnc.fromJson(jsonDecode(value));
    final dec = utf8.decode(zstd.decode(base64Decode(enc.content)));
    Ace ace = Ace.fromJson(jsonDecode(dec));
    final uf = ace.toUfData();
    String ufJson = jsonEncode(uf);
    final ufFile = File("D:\\93601\\Desktop\\test.ufdata");
    ufFile.writeAsString(ufJson);
  });
}
