void main(List<String> args) {
  Kisi emre = Kisi("emre", 22);
  emre.kendiniTanit();

  Calisan hasan = Calisan("hasan", 30, 17000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Benim adim : $isim ve yasim : $yas");
  }
}

class Calisan extends Kisi {
  int maas = 0;
  Calisan(String name, int age, this.maas) : super(name, age);
  @override
  void kendiniTanit() {
    // TODO: implement kendiniTanit
    super.kendiniTanit();
    print("maaşım da: $maas");
  }
}
