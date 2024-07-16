import 'durum.dart';
import 'hareket.dart';
import 'tasit.dart';

class Tren extends Tasit with Durum implements Hareket {
  Tren(super.cinsi, super.modeli, super.uretimYili);
  late int yolcu = 700;

  @override
  dur() {
    print("tren durdu");
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
  yolcuSayisi() {
    print("$cinsi yolcu sayisi $yolcu");
  }
}
