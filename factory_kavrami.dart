// ignore_for_file: unused_local_variable

import 'dart:math';

void main(List<String> args) {
  Ogrenci emre = Ogrenci(12, "emre");
  Ogrenci ahmet = Ogrenci.idSiz("ahmet");
  Ogrenci ayse = Ogrenci.factoryKurucu(-9, "ayse");
  print(ayse.id);
  print:
  (ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";
  Ogrenci(this.id, this.isim) {
    print("varsayilan kurucu çalıştı");
  }
  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }
  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
