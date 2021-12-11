import 'dart:async';

void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  emre.kendiniTanit();

  Calisan hasan = Calisan("hasan", 21, 3000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String isim1, int yas1, this.maas) : super(isim1, yas1);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas tl");
  }
}
