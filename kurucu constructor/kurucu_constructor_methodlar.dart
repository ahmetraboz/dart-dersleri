void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  honda.bilgileriSoyle();
  var bmw = Araba(2024, "bmw", true);
  bmw.bilgileriSoyle();
}

class Araba {
  int? ModelYili;
  String? Marka;
  bool? OtomatikMi;

  Araba(int ModelYili, String Marka, bool OtomatikMi) {
    print('kurucu method çalıştı');
  }

  void bilgileriSoyle() {
    print(
      " Arabanın Modeli : ${ModelYili} , Markası : ${Marka} , Otamatik mi? : ${OtomatikMi}",
    );
  }
}
