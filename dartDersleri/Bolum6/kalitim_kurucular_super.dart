void main(List<String> args) {
  Asker emre = Asker("emre", 34);
  //alt sınıftan nesne oluşturulunca önce üst sınıfın kurucusu çalışır.

  Er emre2 = Er("emre2", 21);
  emre2.selamla();
  emre2.memleketDegistir("bursa");
}

class Asker {
  String ad = "";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  //super : üst sınıfa eriş ve onun constructorunu tetikle. parantez kurucuyu tetiklemek için.
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    //burada da super ile üst sınıfın değişkenine erişiriz
    super.memleket = yeniMemleket;
    print("memleket : " + yeniMemleket);
  }

  @override
  void selamla() {
    print("er sınıfından selamlar");
  }
}
