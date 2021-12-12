void main(List<String> args) {
  //db yi üst yani abstract sınıftan üretmek daha iyi çünkü mesela burada kullandığımız veritabanı oracle ama bunu değiştirmek istediğimizde şu an sadece aşağıdaki satırdaki OracleDB() yerine istediğimiz veritabanını yazmamız yeterli olacak.
  Veritabani db = FirebaseDB();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Oracle db den user silindi");
  }

  @override
  void userSave() {
    print("Oracle db ye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Oracle db de user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("Firebase db den user silindi");
  }

  @override
  void userSave() {
    print("Firebase db den user silindi");
  }

  @override
  void userUpdate() {
    print("Firebase db den user silindi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
