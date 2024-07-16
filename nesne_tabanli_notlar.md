# **Nesne Yönelimli Programlamaya Giriş**

- **Sınıf** : 
  *  Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir.
  * İstediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
- **Nesne** :
  * Oluşturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
  * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz. 

Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumadadır.

- Örnek:

```dart
void main(List<String> args) {
int sayi= 5;

Ogrenci ahmet =Ogrenci();

emre.ogrAd='ahmet boz';
emre.ogrNo= 330;
emre.aktifMi=true; 

Ogrenci emre =Ogrenci(); 

emre.ogrAd='emre boz';
emre.ogrNo= 234;
emre.aktifMi=false;

var kemal= Ogrenci();


/* var : Dart dilinde değişken türünü belirlemek için kullanılır ve türü otomatik olarak çıkarımlanır. 

bu kısım aslında üstte tanımladığımız int sayi=5 ile aynı. Çünkü bir sınıf oluşturduk. 
Adını da Ogrenci koyduk. Ve böyle tanımladığımızda her bir öğrenci için bellekte bir yer ayrılmış olur.
Ayrıca sınıfımızdaki değerleri öğrenciye tanımlamak için örneğin emre.ogrAd gibi ifadeler kullanır ve 
gerekli değerleri öğrenciye atamış oluruz.

Burdaki ahmet ve emre başlangıç adresidir. Nokta koyarak içerdeki değerlere müdahale edebiliyoruz.*/



class Ogrenci{
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;


  void dersCalis(){
print ("öGRENCİ DERS CALİSİYOR");
  }
}
```

//Kısacası oluşturduğumuz yapıya class, ahmet emre gibi isimlere de burada nesne diyoruz.

---


## **Kurucu Constructor Methodlar ve Çeşitleri**

Farklı türde kurucu oluşturabiliriz.

- **1-) Defoult**
  * Sınıf adının yanına ``() ``dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
  * `Ogrenci emre= new Ogrenci()` dediğimizde aslında defoult kurucu çalışır.
  * Defoult constructor sınıfın içinde eğer elşle yazıp belirtmesek bile olan `Ogrenci(){}` şeklinde tanımlı boş bir methoddur.
  * İstersek bunu çeşitli durumlar için kullanabiliriz.Bu method her nesne üretiminde ilk olarak çalışan methoddur.
  * Kurucu metodların geri dönüş tipi olmaz.
- **2-) Parametreli Kurucu Method** 
  * Aslında default constructorun paramaetre almış haline denir.
``Ogrenci emre = new("emre");``
  * Dart dilinde method overloading olmadığı için sadece ya defoult yapıcı ya da parametreli yapıcı olmalıdır.

- **3-) Named(İsimlendiirlmiş) kurucu method** 
  * Sınıf içerisinde ``SinifAdi.MethodAdi(){ buraya kodlar gelir}``

  *  İstediğimiz sayıda isimlendirilmiş kurucu oluşturabiliriz.

  *  ilk yapılan atamalar hazırlıklar kurucu metodlar içinde yapılır.


Örnek: 


```dart

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

  Araba(int Modeli, String Marka, bool OtomatikMi) {
    print('kurucu method çalıştı');
  }
// kurucu method


  void bilgileriSoyle() {
    print(
        " Arabanın Modeli : ${ModelYili} , Markası : ${Marka} , Otamatik mi? : ${OtomatikMi}");
  }
}
```

Örnek 2 : 

```dart
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
  //burda named constructor kullandık ve değerlerden birisini tanımlamadık.

  void bilgileriSoyle() {
    print(
      " Arabanın Modeli : ${ModelYili} , Markası : ${Marka} , Otamatik mi? : ${OtomatikMi}",
    );
  }

  void yasHesapla() {
    print("Arabanın Yaşı : ${2025 - ModelYili!}");
  }
}


```
---
## This Kullanımı



öRNEK: 


```dart
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

  Araba(int ModelYili, String Marka, bool OtomatikMi) {
    print('kurucu method çalıştı');
    this.ModelYili = ModelYili;
    this.Marka = Marka;
    this.OtomatikMi = OtomatikMi;
    /* this metodunu buraya yazma sebebimiz aşağıda arabanın yaşını hesapladığımız fonksiyonda modelYili
     isminin hata verip o değerin bir değere atanmadığını söylemesi. Böyle yaptığımız için artık 
     yasHesapla fonskiyonu hata vermeyecek.*/
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


```

ÖRNEK 2 : 


```dart
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

  Araba(this.ModelYili, this.Marka, this.OtomatikMi) {// daha çok böyle kullanacağız
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
```
---
## Faktory Kullanimi

- `factory` sayesinde nesneler üretebiliyoruz. Bir kurucu yapısı . Diğerlerinden farklı return kullanabiliyoruz.
````Dart


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



````
---

 ## Private Değişken ve Methodlar

- Bir sınıftaki değişkenleri ve metodları bazen erişime kapatmak isteyebilriz. Bu durumlarda `_`kullanarak bunları saklarız.

- Getter Metodlar 
  *  Sınıf değişkenleri okumak için kullanılan özel fonksiyonlardır. Bu fonksiyonların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.

- Setter Metodlar  
  *  Sınıf değişkenlerine veri atamak için kullanılır. Bu metodların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır , ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.

 Örnek : Bir sınıf oluşturduk , burdaki kullanıcıadi ve sifre stringlerini `_` koyarak gizledik.

````Dart
class VeritabanIslemleri {
  String _kullaniciAdi = "ahmet";
  String _sifre = "123456";

  bool baglan() {
    if (_kullaniciAdi == "ahmet" && _sifre == "123456") {
      return true;
    } else
      return false;
  }
}


````

Sonra da nmain in olduğu kısma import ettik. Ve artık buradan kullanici şifre verisine ve şifre verisine erişilemez hale geldi.

````dart
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  VeritabanIslemleri db = VeritabanIslemleri();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandım");
  } else
    print("bağlanmadım");
}
````
---

 ## GET VE SET



````DART
class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo); 
  }

  String get musteriNoSoyle {
    return "müsteri no : $_musteriNo";
  }

  String get musteriNoSoyle2 =>  "müsteri no : $_musteriNo";
  

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void _musteriNoKontrol(int no) { 
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print("müşteri oluşturuldu müşteri no : $_musteriNo");
  }
}
````
Bu şekilde class içinde oluşturabiliriz.


bu da main kısmı : 
````dart 
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

````
---
### Nesne Tabanlı Kodlama Bölüm Sonu Soruları
- 1-)
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıÇap alan kurucusu olmalı. Ayrıca cevre ve alanını hesaplayan metodlar olmalı.(Pi sayısı 3,14 alınacak).


ÇÖZÜM


 Main Kısmı

```dart
import 'dart:math';

import 'cember_sorusu.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(4);
  print("Çevre : ${c1.alanhesapla()}");
  print("Alan : ${c1.cevreHesapla()}");
}

```


 Class Kısmı


``` dart
class CemberDaire {
  int yariCap= 1;
  double PI=3.14;
double? alan ;
double? cevre;
  CemberDaire(this. yariCap){
  

  }
  double alanhesapla(){
    return (PI*yariCap*yariCap);
  }

  double cevreHesapla(){
    
    return (2*PI*yariCap);

  }
}

```


- 2-)
Ogrenci isimli sınıf oluşturun.  Bu sınıfta öğrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerleri rastgele oluşturularak bu öğrencileri saklayın ve öğrencileri yazdıran metodu yazın.


Main Kısmı
  
  ````dart
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


 
````
Class Kısmı

```` DART
class Ogrenci {
  int id;
  int notDegeri;

  
  Ogrenci({required this.id, required this.notDegeri});
}
````
---
 ## Kalıtım

- Bir sınıfımız var bu sınıfın özelliklerini bundan oluşturcağımız sınıflarda da kullanıyosak bunu kalırtımla sağlarız.
- Örnek olarak gerçek hayattaki 2 insanın evlenip çocuk sahibi olmasını düşünebiliriz. Parent sınıfın childına sahip olmak.
Parentslerin child a aktardığı özellikler var. Genetik kalıtım gibi düşünebiliriz.

Örnek olarak gerçek hayattan bir örnek inceleyelim :  

- Varlık sınıfımız olsun varlık sınıfımızın altında canlı ve cansız olarak 2 tane sınıf daha oluşturabiliriz  canlı sınıfının altında insan bitki ve hayvan olmak üzere 3 tane daha sınıf oluşturabilirz. Burdaki 3 ü canlı olmayı ve varlık olmayı sağlar. bir array list oluşturduğumuzu düşünelim her birisi için ayrı arraylist oluşturmak yerine canlı isminde bir array list oluşturup bunun içinde hepsini barındırabiliriz.

- Oluşturduğumuz parent sınıfın da object adında biz oluşturmasak da bir parentsi var.

- Anahtar kelimemiz``extends``olacak.

Örnek : 




```dart
import 'dart:ffi';

void main(List<String> args) {


User user1 = User();
user1.girisYap();


NormalUser nrmlusr1 = NormalUser();
nrmlusr1.girisYap();

SadeceOkuyabilenNormalUser okuyanuser=SadeceOkuyabilenNormalUser();
okuyanuser.girisYap();
;


}

class User {
  String? email;
  String? password;
  void girisYap() {
    print("parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("arkadaşlarını davet et");

  }
@override
  void girisYap() {
    
    print("normal user giriş yap");
  }

}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }
  @override
  void girisYap() {
    print("sadece okuyabilen  normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("toplam kullanıcı sayısı : 20");
  }
}
```
- Bu örnekte parents olarak user classını oluşturduk oluşturduktan sonra altına 3 farklı class daha oluşturduk. Bu classlardan normalUser in altında bir class daha oluşturduk. (extendslemeyi unutmayalim).
-  Diğer önemli detay ise ana parents classımızda oluşturduğumuz `` print("parent user giriş yaptı");`` bu kodu diğer classlarımızda örneğin notmalUser classımızda `` print("normal user giriş yap");`` kodunu yazarak ezdik. (``@override`` yapmayı unutmayın.)
 

---
 ## Kalıtımda çok biçimlilik

 -  Mesela Canlı-->Hayvan-->kedi-->scottish şeklind ebir class dizini oluşturduğumuzu düşünellim burayı yorumlarken her her scottish bir kedidir diye rahatca söyleyebiliyoruz bunun gibi her scottish bir hayvan da diyebiliriz.

  ```dart

  import 'dart:ffi';

void main(List<String> args) {

User user1 = User();
var user2 = NormalUser();
SadeceOkuyabilenNormalUser user3=SadeceOkuyabilenNormalUser();
AdminUser user4 =AdminUser();


User user5 =AdminUser();//Upcasting yukarı çevrim
User user6 = SadeceOkuyabilenNormalUser();//Upcasting yukarı çevrim


List <User>tumUserlar= [];
tumUserlar.add(user1);
tumUserlar.add(user2);
tumUserlar.add(user3);
tumUserlar.add(user4);
// farklı veri yapılarını bu şekilde bir arada tutabiliyoruz.
//böyle yaparsak her birisi için ayrı liste oluşturmamaıza gerek kalmaz.



test(user1);
test(user2);
test(user3);
}


void test (User kullanici){ // test edelim.
  kullanici.girisYap();
  // buradaki kullanicinin içinde farklı türde classların olması  polimorfizim çok biçimliliktir.
}



class User {
  String? email;
  String? password;
  void girisYap() {
    print("parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("arkadaşlarını davet et");

  }
@override
  void girisYap() {
    
    print("normal user giriş yap");
  }

}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }
  @override
  void girisYap() {
    print("sadece okuyabilen  normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("toplam kullanıcı sayısı : 20");
  }
}

  ```
---

## Kalıtımda Kruucu Metod



  ```dart


void main(List<String> args) {
  Er ahmet = Er();
}

class Asker {
  String? ad;
  int? yas;

  Asker() {
    print("asker sinifinin kurucusunu çalıştır");
  }
}

class Er extends Asker {
  Er() {
    print("er sinifinin kurucusu çalisti");
  }
}

```

  -  Burada kodu çalıştırdığımız zaman sırasıyla önce "asker sinifinin kurucusunu çalıştır" çıktısı sonra da  çalıştır
"er sinifinin kurucusu çalisti" çıktılarını alırız. Çünkü alt sınıftan bir nesne ürettiysek (aralarında extends olması şartıyla) ilk olarak üst classın kurucu methodu çalışır.

---

## Kalıtımda super Kullanımı


Örnek 1 : 
```dart
import 'dart:ffi';

void main(List<String> args) {
  Asker veli = Asker(21, "veli");
  Er ahmet = Er(28, "ahmet");
  ahmet.memleketDegistir("antalya");
  
  // ahmet.selamla();
}

class Asker {
  String ad = "avrsayılan isim ";
  int yas = 0;
  String memleket = "Konya";
  Asker(
    this.yas,
    this.ad,
  ) {
    print("asker sinifinin kurucusunu çalıştır");
  }

  void selamla() {
    print("merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(
    int yas,
    String ad,
  ) : super(yas, ad) {
    print("er sinifinin kurucusu çalisti");
    /* burada eğer super yazıp er classımızı içine parametrelerimizi belirtirsek eğer sorun ortadan kalkar
     ve er sınıfına da parametre girebiliriz
     Kısacası super demek üst sınıfa git demek*/
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
    super.selamla();
    /*buradaki superler de benzer mantıkta üstlerinde parentslere erişmeyi sağlıyor*/
  }
}


```

Örnek 2 : 

```dart
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
```

Bu kodun çıktısı : 
 ```
Benim adim : emre ve yasim : 22 
Benim adim : hasan ve yasim : 30
maaşım da: 17000
```


## INTERFACE VE ABSTRACT SINIFLAR

### Abstract sınıf ve metodlar

- Abstract soyut sınıf : Sınıflar arasında soyutlama yapmak için kullanılır.
- Abstract sınıflardan nesne üretilmez,abstract sınıflarda normal ve abstract sınıflar olur.
- abstract methodlar alt sınıflarca override edilmek zorundadır.
- Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.

```dart
import 'dart:ffi';

import 'kalıtım_çokbiçimlilik.dart';

void main(List<String> args) {
//Sekil s1 =Sekil(); //abstract classlardan nesne oluşturamayız.
  Sekil k1 = Kare(4); // Bu şekilde oluşturabiliriz.
  print(k1.alanHesapla());
  print(k1.cevreHesapla());
  k1.selamla();

  Sekil d1 = Dikdortgen(10, 5);
  print(d1.alanHesapla());
  print(d1.cevreHesapla());
  d1.selamla();

  List<Kare> tumKareler =
      []; // bunun yerine tum sekiller listemizi kullanabileceğiz
  List<Kare> tumDikdortgenler =
      []; // bunun yerine de tum sekiller listemizi kullanabileceğiz
  List<Sekil> tumSekiller = []; //tek tek liste oluşturmamıza gerek yok
  tumSekiller.add(k1);
  tumSekiller.add(
      d1); // ad metodutyla dikdörtgeni de kareyi de sekil listemizde saklayabildik.

  test(k1);
  test(d1);
}

void test(Sekil sekil) {
  // tek bir tane fonksiyon 2 tane farklı türdeki yapıya işlem tyaptırabildi(önemli özellik)
  sekil.selamla();
}

abstract class Sekil {
  int alanHesapla();
  int cevreHesapla();
  void selamla() {
    print("ben sekil sınıfındfanım");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  int alanHesapla() {
    return kenar * kenar;
  }

  @override
  int cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("ben kare sınıfıyım");
  }
}

class Dikdortgen extends Sekil {
  int en;
  int boy;

  Dikdortgen(this.en, this.boy);

  @override
  int alanHesapla() {
    return en! * boy!;
  }

  @override
  int cevreHesapla() {
    return 2 * (en! + boy!);
  }

  @override
  void selamla() {
    print("ben dikdörtgen sınıfıyım");
  }
}


```

Örnek : 

```dart
void main(List<String> args) {
  //OracleDb db1 = OracleDb();
  FireBasedb db1 = FireBasedb();// bu ksıımdaki gibi oracledb yerine firebasdb yazmamız yeterli

  db1.userSave();
  userGuncelle(db1);
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

void userGuncelle(VeriTabani veritabani) {
  veritabani.userUpdate();
}

class OracleDb extends VeriTabani {
  @override
  void userDelete() {
    print("oracledb den user silindi");
  }

  @override
  void userSave() {
    print("oracledb den user kaydedildi");
  }

  @override
  void userUpdate() {
    print("oracledb den user güncellendi");
  }
}

class FireBasedb extends VeriTabani {
  @override
  void userDelete() {
    print("FireBasedb den user silindi");
  }

  @override
  void userSave() {
    print("FireBasedb den user kaydedildi");
  }

  @override
  void userUpdate() {
    print("FireBasedb den user güncellendi");
  }
}


```
 - Burada örnekte Oracle databaseden Firebasdb ye geçmek istediğimizde koddaki her yerden değil sadece 
 nesne oluşturduğumuz kısımda veritabanı ismini güncellediğimizde başka hiçbir yerden değiştirmemize gerek kalmaz.
 - Bu özellik çok önemlidir.!!!


## Interface

- Dart dilinde interface kavramı yoktur,ana sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
- İnterfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.

- Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
- Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir. 

```dart
void main(List<String> args) {
  
}

abstract class Hayvan {}
  
abstract class Ucabilenler {
  void fly();
  
}
abstract class Havlayabilenler {
  void bark();
  
}
abstract class Kosabilenler {
  void run();
  
}
class Kopek extends Hayvan implements Havlayabilenler,Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

 
}
class Kus extends Hayvan implements Ucabilenler{
  @override
  void fly() {
    // TODO: implement fly
  }

}
class Insan implements Kosabilenler{
  @override
  void run() {
    // TODO: implement run
  }

}

```
- Burda yaptığımız implement işlemi implementslediğimiz classın içindekileri implement edilen fonksiyona getirir(ovirride kullanarak)


## Statik Method Ve Değişkenler

- Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. Burada karsımıza statik kavramı çıkar.
- Statik kullanarak nesne değil sınıf değişkenleri ve methodları oluşturabilirz.
- Bir sınıfta tanımlanan metod ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları statik oalrak tanımlarsak artık nesne üretmeden bu değişkenlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

- Ayrıca statik değişkenler kullanılana kadar deger almazlar , bellekte yer ayrılmaz statik metodların içinde this anahtar kelimesi kullanılmaz.
- Statik metodlar içinden nesneye özgü alanlara erişilemezken , nesneye özgü metod içinden statik değerler erişilebilir.   


```dart
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
```
- Statik bir değişkenin içinde normal bir değişken çağıramayız!!.Tam tersi mümkündür yani normal bir değiken içinde statik değişkene erişebiliriz.




## Final ve Const

```dart
void main(List<String> args) {
  
var str ="emre";
str="ahmet";// burada emre string değerimizi ahmetle değiştirebiliyoruz.


final String str2="emre";
// str2 = "ahmet" // burada ise final dediğimiz için emre stringimizi ahmet ile değiştiremiyoruz.
const String str3="boz";
//str3="ahmet"; // sabit değerler eyeni değerler atayamayız.

}

```
### Final Kullanımı


```dart

 const sayi = 5;
  const sayi2 = 10;

  final tarih = DateTime.now();
//const tarih2 =DateTime.now();
// çalıştırılma anının tarihini ataması gerekiyor çalışmadan bir değeri yok bu yüzden const kullanılamaz.
//constu compile timede belli olanlarda kullanacağız.

  final Liste1 = [1, 2, 3];
  final Liste2 = [1, 2, 3];

  Liste1.add(4);
  Liste2.add(8);// Final dedikten sonra listemizin içine değer atayabiliriz. Sonuçta hafızadaki yeri belli sadece ekleme yapıyoruz.

  if (Liste1 == Liste2) {
    print("eşit");
  } else {
    print("eşit değil");// liste içeriği tamamen aynı olsa bile eşit değilşdir.
  }
}

```

### Const Kullanımı

```dart
//canonicalized
  const Liste2 = [1, 2];
  const Liste3 = [1, 2];//istediğimiz kadar adını farklı koyalım içeriği aynıysa bütün isimler aynı yeri göstercek.

  Liste2.add(6); // hata alırız çünküü constların içeriği değiştirilemez


 if (Liste3 == Liste2) {
    print("eşit");
  } else {
    print("eşit değil");//çıktısı eşittir
  }



```

## Immutable sinif oluşturma


```dart

void main(List<String> args) {
  Student emre = Student(12, "ahmet");
  Student emre2 = Student(12, "ahmet");

  if (emre2 == emre) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;
  Student(this.id, this.isim);
}

```
- Bu kodlarda çıktı olarak eşit değil çıktısınız alırız. Çünkü hafızada farklı yerleri kullanırlar. Ve değerleri güncelleyebiliyoruz.

```dart

void main(List<String> args) {
  const Student emre = Student(12, "ahmet");
  const Student emre2 = Student(12, "ahmet");

  if (emre2 == emre) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;
  const Student(this.id, this.isim);
}

```
- Bu kodlarda ise eşit çıktıısnı alırız aarasındaki fark  Student sınıfının başına const eklememizdir. Ve ayrıca değerleri güncelleyemiyoruz.
