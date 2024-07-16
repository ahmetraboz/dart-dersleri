void main(List<String> args) {
  int sayi = 5;

  Ogrenci emre = Ogrenci();
  emre.ogrAd = 'emre boz';
  emre.ogrNo = 234;
  emre.aktifMi = false;
  Ogrenci ahmet = Ogrenci();
  emre.ogrAd = 'ahmet boz';
  emre.ogrNo = 330;
  emre.aktifMi = true;

  var kemal = Ogrenci();
}

class Ogrenci {
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  get id => null;

  get notDegeri => null;

  void dersCalis() {
    print("öGRENCİ DERS CALİSİYOR");
  }
}
