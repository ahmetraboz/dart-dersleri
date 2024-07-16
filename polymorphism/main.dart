import 'dikdörtgen.dart';
import 'kare.dart';
import 'ucgen.dart';

void main(List<String> args) {
  Kare kare1 = Kare(5, 5);
  print(kare1.alanHesapla());
  Dikdorgen dikdorgen = Dikdorgen(10, 5);
  print(dikdorgen.alanHesapla());
  Ucgen ucgen = Ucgen(20, 10);
  print(ucgen.alanHesapla());
}
