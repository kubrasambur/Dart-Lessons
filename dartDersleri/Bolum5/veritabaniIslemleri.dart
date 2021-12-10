import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "kubra";
  String _sifre = "1234";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "kubra" && _sifre == "1234") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }

  VeritabaniIslemleri() {}

  VeritabaniIslemleri.loginWithNameAndPassword(
      String _kullaniciAdi, String _password) {
    print("lll");
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
