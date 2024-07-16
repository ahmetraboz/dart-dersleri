class Tasit {
  late String cinsi;
  late int uretimYili;
  late String modeli;

  Tasit(this.cinsi, this.modeli, this.uretimYili);
  bilgiVer() {
    print("taşıtımız $cinsi, üretim yılı$uretimYili, modeli $modeli");
  }
}
