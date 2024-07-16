import 'dart:ffi';

void main(List<String> args) {
  Asker veli = Asker(21, "veli");
  Er ahmet = Er(28, "ahmet");
  ahmet.memleketDegistir("antalya");
  
  // ahmet.selamla();
}

class Asker {
  String ad = "avrsayılan isim ";
  int yas = 0;
  String memleket = "Konya";
  Asker(
    this.yas,
    this.ad,
  ) {
    print("asker sinifinin kurucusunu çalıştır");
  }

  void selamla() {
    print("merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(
    int yas,
    String ad,
  ) : super(yas, ad) {
    print("er sinifinin kurucusu çalisti");
    /* burada eğer super yazıp er classımızı içine parametrelerimizi belirtirsek eğer sorun ortadan kalkar
     ve er sınıfına da parametre girebiliriz
     Kısacası super demek üst sınıfa git demek*/
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
    super.selamla();
    /*buradaki superler de benzer mantıkta üstlerinde parentslere erişmeyi sağlıyor*/
  }
}
