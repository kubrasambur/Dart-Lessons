class Musteri {
  int? _musteriNo;

/*
  Musteri(int musteriNo1) {
    this.musteriNo = musteriNo1;
  }
*/
  //Musteri(this._musteriNo);
  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  String get musteriNoSoyle {
    return "musteri no : $_musteriNo";
  }

  //yukarıdaki ve aşağıdaki aynı. sadece aşağıdaki kısa gösterim

  String get musteriNoSoyle2 => "musteri no : $_musteriNo";

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("musteri olusturuldu. Musteri no : $_musteriNo");
  }
}
