void main(List<String> args) {
  //OracleDb db1 = OracleDb();
  FireBasedb db1 = FireBasedb();

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
