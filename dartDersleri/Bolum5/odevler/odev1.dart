/*

Soru 1 : CemberDaire isimli sınıf oluşturun. bu sınıfın yarıçap alan kurucusu olmalı. ayrıca çevre ve alanı hesaplayan metotlar olmalı.(Pi = 3,14)

Soru 2 : Ogrenci isimli sınıf oluşturun. bu sınıfta öğrencinin id si ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri yazdıran metotu yazın.

*/

import 'dart:math';

import 'ogrenci.dart';
import 'cemberdaire.dart';

void main(List<String> args) {
  //soru 1
  /*
  CemberDaire c1 = CemberDaire(5);
  print("alan : ${c1.alanHesapla()}");
  print("çevre : ${c1.cevreHesapla()}");
  */

  //soru 2
  Ogrenci og1 = Ogrenci(id: 5, not: 10);

  List<Ogrenci> tumogrenciler = List.filled(5, Ogrenci());

  ogrenciListesiniDoldur(tumogrenciler);

  for (Ogrenci oankiogrenci in tumogrenciler) {
    print(oankiogrenci);
  }
  print("tum ogrencilerin ortalaması : " +
      ogrencilerinOrtalamasiniHesapla(tumogrenciler).toString());

  //print(tumogrenciler[5].id);
  //print(tumogrenciler[5].not);
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankinotdegeri in liste) {
    toplam += oankinotdegeri.not;
  }
  return toplam / liste.length;
}
