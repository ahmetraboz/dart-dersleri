import 'dart:math';

import 'ogrenci_sorusu.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 6, notDegeri: 50);
  List<Ogrenci> tumOgrenciler = List.generate(
      100,
      (index) => Ogrenci(
            id: Random().nextInt(100),
            notDegeri: Random().nextInt(100),
          ));

  print(tumOgrenciler[5].notDegeri);
  ogrenciListesiDoldur(tumOgrenciler);
}

void ogrenciListesiDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(100), notDegeri: Random().nextInt(100));
  }
  for (var ogrenci in liste) {
    print('ID: ${ogrenci.id}, Not: ${ogrenci.notDegeri}');
  }
}
