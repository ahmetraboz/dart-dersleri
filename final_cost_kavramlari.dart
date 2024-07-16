import 'dart:js_interop';

void main(List<String> args) {
/*var str ="emre";
str="ahmet";// burada emre string değerimizi ahmetle değiştirebiliyoruz.


final String str2="emre";
// str2 = "ahmet" // burada ise final dediğimiz için emre stringimizi ahmet ile değiştiremiyoruz.
const String str3="boz";
//str3="ahmet"; // sabit değerler eyeni değerler atayamayız.
*/

  const sayi = 5;
  const sayi2 = 10;

  final tarih = DateTime.now();
//const tarih2 =DateTime.now();
// çalıştırılma anının tarihini ataması gerekiyor çalışmadan bir değeri yok bu yüzden const kullanılamaz.
//constu compile timede belli olanlarda kullanacağız.

  /* final Liste1 = [1, 2, 3];
  final Liste2 = [1, 2, 3];

  Liste1.add(4);
  Liste2.add(8);// Final dedikten sonra listemizin içine değer atayabiliriz. Sonuçta hafızadaki yeri belli sadece ekleme yapıyoruz.

  if (Liste1 == Liste2) {
    print("eşit");
  } else {
    print("eşit değil");// liste içeriği tamamen aynı olsa bile eşit değilşdir.
  }*/

//canonicalized
  const Liste2 = [1, 2];
  const Liste3 = [
    1,
    2
  ]; //istediğimiz kadar adını farklı koyalım içeriği aynıysa bütün isimler aynı yeri göstercek.

  Liste2.add(6); // hata alırız çünküü constların içeriği değiştirilemez

  if (Liste3 == Liste2) {
    print("eşit");
  } else {
    print("eşit değil"); //çıktısı eşittir
  }
}
