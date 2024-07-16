import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {

Musteri m1 = Musteri(500);
m1.bilgileriYazdir();
m1.musteriNoAta= 952;
m1.musteriNoSoyle;
print(m1.musteriNoSoyle);


  VeritabanIslemleri db = VeritabanIslemleri();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandım");
  } else
    print("bağlanmadım");
}

