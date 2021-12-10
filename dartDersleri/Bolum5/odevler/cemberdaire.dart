//Soru 1 : CemberDaire isimli sınıf oluşturun. bu sınıfın yarıçap alan kurucusu olmalı. ayrıca çevre ve alanı hesaplayan metotlar olmalı.(Pi = 3,14)

class CemberDaire {
  int _yaricap = 1;
  double _pi = 3.14;

  CemberDaire(int yariCap) {
    _yaricapKontrol = yariCap;
  }

  void set _yaricapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * 3.14 * _yaricap;
  }

  double alanHesapla() {
    return _pi * _yaricap * _yaricap;
  }
}
