import 'sekil.dart';

class Ucgen extends Sekil {
  Ucgen(double yukseklik, double genislik) : super(yukseklik, genislik);
  @override
  double alanHesapla() {
    return (genislik * yukseklik) / 2;
  }
}
