class Pazarlamaci {
  String ad;
  String soyad;
  int telefon;
  int satisAdeti;
  int? _prim;
  Pazarlamaci(this.ad,this.soyad,this.telefon,this.satisAdeti){
    _prim = satisAdeti *5;
  }
  int get prim {return _prim!;
  }
  set prim (int value){
    _prim=value*5;
  }
}