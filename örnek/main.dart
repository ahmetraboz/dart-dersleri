import 'tren.dart';
import 'ucak.dart';

void main(List<String> args) {
  Tren tren = Tren("tren", "yolcutreni", 2000);
  Ucak ucak = Ucak("ucak", "boing", 1980);
  ucak.yolcu = 800;
  ucak.yolcuSayisi();
  ucak.dur();
  ucak.kalk();
  ucak.bilgiVer();

  tren.yolcu = 500;
  tren.yolcuSayisi();
  tren.dur();
  tren.hizlan();
  tren.bilgiVer();
}
