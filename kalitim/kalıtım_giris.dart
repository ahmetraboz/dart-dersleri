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
