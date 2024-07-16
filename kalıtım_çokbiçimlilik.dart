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
