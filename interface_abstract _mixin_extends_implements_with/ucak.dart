import 'durum.dart';
import 'hareket.dart';
import 'tasit.dart';

class Ucak extends Tasit with Durum implements Hareket {
  Ucak(super.cinsi, super.modeli, super.uretimYili);
  late int yolcu = 500;

  @override
  dur() {
    print("$cinsi durdu");
  }

  @override
  hizlan() {
    print("$cinsi hızlandı");
  }

  @override
  kalk() {
    print("$cinsi kalktı");
  }

  @override
  yukseklik() {
    print("$cinsi yeterli yükseklikte");
  }

  @override
  yolcuSayisi() {
    print("ucakta yolcu sayısı $yolcu");
  }

  @override
  denizRuzgari() {
    print("deniz rüzgarı kuzey yönünde 5 mil şiddetinde");
  }
}
