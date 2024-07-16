import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  print(Matematik
      .PI); //statik metodlara eriişmek için sınıfadını yazıp nokta koymalıyız
  Matematik.siniAdiSoyle();
}

class Matematik {
  //instance veriable
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static double PI =
      3.14; // static yazarak bunu class veriable yaptık m1 gibi bir yeni nesne oluşturmadan erişebiliriz artık.
  static void siniAdiSoyle() {
    print("sınıf adini söyle");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    print("toplam $birinciSayi+$ikinciSayi");
  }

  void cikar() {
    print("toplam ${birinciSayi + ikinciSayi}");
  }
}
