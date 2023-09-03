class Vsqx {
  Vsqx({
    required this.vsq4,
  });

  Vsq4 vsq4;
}

class Vsq4 {
  Vsq4({
    required this.mixer,
    required this.masterTrack,
    required this.vsTrack,
    required this.monoTrack,
    required this.stTrack,
    required this.aux,
  })  : vender = Cdata(cdata: '<![CDATA[Yamaha corporation]]>'),
        version = Cdata(cdata: '<![CDATA[4.0.0.3]]>'),
        vVoiceTable = VVoiceTable();

  Cdata vender;
  Cdata version;
  VVoiceTable vVoiceTable;
  Mixer mixer;
  MasterTrack masterTrack;
  List<VsTrack> vsTrack;
  String monoTrack;
  StTrack stTrack;
  Aux aux;
}

class Aux {
  Aux({
    required this.id,
    required this.content,
  });

  Cdata id;
  Cdata content;
}

class Cdata {
  Cdata({required this.cdata});

  String cdata;
}

class MasterTrack {
  MasterTrack({
    required this.seqName,
    required this.comment,
    required this.resolution,
    required this.preMeasure,
    required this.timeSig,
    required this.tempo,
  });

  Cdata seqName;
  Cdata comment;
  int resolution;
  int preMeasure;
  TimeSig timeSig;
  Tempo tempo;
}

class Tempo {
  Tempo({
    required this.t,
    required this.v,
  });

  int t;
  int v;
}

class TimeSig {
  TimeSig({
    required this.m,
    required this.nu,
    required this.de,
  });

  int m;
  int nu;
  int de;
}

class Mixer {
  Mixer({
    required this.masterUnit,
    required this.vsUnit,
    required this.monoUnit,
    required this.stUnit,
  });

  MasterUnit masterUnit;
  List<Unit> vsUnit;
  Unit monoUnit;
  StUnit stUnit;
}

class MasterUnit {
  MasterUnit({
    required this.oDev,
    required this.rLvl,
    required this.vol,
  });

  int oDev;
  int rLvl;
  int vol;
}

class Unit {
  Unit({
    required this.iGin,
    required this.sLvl,
    required this.sEnable,
    required this.m,
    required this.s,
    required this.pan,
    required this.vol,
    required this.tNo,
  });

  int iGin;
  int sLvl;
  int sEnable;
  int m;
  int s;
  int pan;
  int vol;
  int tNo;
}

class StUnit {
  StUnit({
    required this.iGin,
    required this.m,
    required this.s,
    required this.vol,
  });

  int iGin;
  int m;
  int s;
  int vol;
}

class StTrack {
  StTrack({
    required this.wavPart,
  });

  WavPart wavPart;
}

class WavPart {
  WavPart({
    required this.t,
    required this.playTime,
    required this.name,
    required this.comment,
    required this.fs,
    required this.rs,
    required this.nCh,
    required this.filePath,
  });

  int t;
  int playTime;
  Cdata name;
  Cdata comment;
  int fs;
  int rs;
  int nCh;
  Cdata filePath;
}

class VVoiceTable {
  VVoiceTable();

  List<VVoice> vVoice = [VVoice()];
}

class VVoice {
  VVoice()
      : bs = 4,
        pc = 19,
        id = Cdata(cdata: '<![CDATA[BY98KLLZTDYH7YEE]]>'),
        name = Cdata(cdata: '<![CDATA[Yuezheng_Ling_Chi]]>'),
        vPrm = VPrm();

  int bs;
  int pc;
  Cdata id;
  Cdata name;
  VPrm vPrm;
}

class VPrm {
  VPrm()
      : bre = 0,
        bri = 0,
        cle = 0,
        gen = 0,
        ope = 0;

  int bre;
  int bri;
  int cle;
  int gen;
  int ope;
}

class VsTrack {
  VsTrack({
    required this.tNo,
    required this.name,
    required this.comment,
    required this.vsPart,
  });

  int tNo;
  Cdata name;
  Cdata comment;
  dynamic vsPart;
}

class VsPartElement {
  VsPartElement({
    required this.t,
    required this.playTime,
    required this.name,
    required this.comment,
    required this.sPlug,
    required this.pStyle,
    required this.singer,
    required this.cc,
    required this.note,
    required this.plane,
  });

  int t;
  int playTime;
  Cdata name;
  Cdata comment;
  SPlug sPlug;
  Style pStyle;
  Singer singer;
  List<Tempo> cc;
  List<Note> note;
  int plane;
}

class Note {
  Note({
    required this.t,
    required this.dur,
    required this.n,
    required this.v,
    required this.y,
    required this.p,
    required this.nStyle,
  });

  int t;
  int dur;
  int n;
  int v;
  Cdata y;
  Cdata p;
  Style nStyle;
}

class Style {
  Style({
    required this.v,
  });

  List<int> v;
}

class SPlug {
  SPlug()
      : id = Cdata(cdata: '<![CDATA[ACA9C502-A04B-42b5-B2EB-5CEA36D16FCE]]>'),
        name = Cdata(cdata: '<![CDATA[VOCALOID2 Compatible Style]]>'),
        version = Cdata(cdata: '<![CDATA[3.0.0.1]]>');

  Cdata id;
  Cdata name;
  Cdata version;
}

class Singer {
  Singer()
      : t = 0,
        bs = 4,
        pc = 19;

  int t;
  int bs;
  int pc;
}
