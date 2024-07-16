void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  honda.bilgileriSoyle();
  var bmw = Araba(2024, "bmw", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();
  var skoda = Araba.MarkasizKurucuMetodu(2000, true);
  skoda.bilgileriSoyle();
}

class Araba {
  int? ModelYili;
  String? Marka;
  bool? OtomatikMi;

  Araba(this.ModelYili, this.Marka, this.OtomatikMi) {
    print('kurucu method çalıştı');
  }
  Araba.MarkasizKurucuMetodu(this.ModelYili, this.OtomatikMi);

  void bilgileriSoyle() {
    print(
      " Arabanın Modeli : ${ModelYili} , Markası : ${Marka} , Otamatik mi? : ${OtomatikMi}",
    );
  }

  void yasHesapla() {
    print("Arabanın Yaşı : ${2025 - ModelYili!}");
  }
}
