void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  honda.bilgileriSoyle();
  var bmw = Araba(2024, "bmw", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();
}

class Araba {
  int? ModelYili;
  String? Marka;
  bool? OtomatikMi;

  Araba(this.ModelYili, this.Marka, this.OtomatikMi) {
    print('kurucu method çalıştı');
  }

  void bilgileriSoyle() {
    print(
      " Arabanın Modeli : ${ModelYili} , Markası : ${Marka} , Otamatik mi? : ${OtomatikMi}",
    );
  }

  void yasHesapla() {
    print("Arabanın Yaşı : ${2025 - ModelYili!}");
  }
}
