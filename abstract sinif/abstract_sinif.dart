import 'dart:ffi';

import '../kalitim/kalıtım_çokbiçimlilik.dart';

void main(List<String> args) {
//Sekil s1 =Sekil(); //abstract classlardan nesne oluşturamayız.
  Sekil k1 = Kare(4); // Bu şekilde oluşturabiliriz.
  print(k1.alanHesapla());
  print(k1.cevreHesapla());
  k1.selamla();

  Sekil d1 = Dikdortgen(10, 5);
  print(d1.alanHesapla());
  print(d1.cevreHesapla());
  d1.selamla();

  List<Kare> tumKareler =
      []; // bunun yerine tum sekiller listemizi kullanabileceğiz
  List<Kare> tumDikdortgenler =
      []; // bunun yerine de tum sekiller listemizi kullanabileceğiz
  List<Sekil> tumSekiller = []; //tek tek liste oluşturmamıza gerek yok
  tumSekiller.add(k1);
  tumSekiller.add(
      d1); // ad metodutyla dikdörtgeni de kareyi de sekil listemizde saklayabildik.

  test(k1);
  test(d1);
}

void test(Sekil sekil) {
  // tek bir tane fonksiyon 2 tane farklı türdeki yapıya işlem tyaptırabildi(önemli özellik)
  sekil.selamla();
}

abstract class Sekil {
  int alanHesapla();
  int cevreHesapla();
  void selamla() {
    print("ben sekil sınıfındfanım");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  int alanHesapla() {
    return kenar * kenar;
  }

  @override
  int cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("ben kare sınıfıyım");
  }
}

class Dikdortgen extends Sekil {
  int en;
  int boy;

  Dikdortgen(this.en, this.boy);

  @override
  int alanHesapla() {
    return en! * boy!;
  }

  @override
  int cevreHesapla() {
    return 2 * (en! + boy!);
  }

  @override
  void selamla() {
    print("ben dikdörtgen sınıfıyım");
  }
}
