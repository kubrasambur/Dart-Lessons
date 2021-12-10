void main(List<String> args) {
  Ogrenci kubra = Ogrenci(5, "kubra");
  Ogrenci kubra2 = Ogrenci.Idsiz("kubra2");
  Ogrenci kubra3 = Ogrenci.factoryKurucusu(-9, "ayşe");

  print(kubra3.id);
  print(kubra3.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  //varsayılan kurucular return etmez.
  Ogrenci(this.id, this.isim) {
    print("varsayılan kurucu çalıştı");
  }

  Ogrenci.Idsiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
