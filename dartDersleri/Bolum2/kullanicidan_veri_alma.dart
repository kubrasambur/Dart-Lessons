import 'dart:io';

void main(List<String> args) {
  /*

  print("adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim : $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas += 5;
  print("girilen isim : $yas");

  */

  //örnekler

  // 1 - iki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın

  /*

  print("birinci notunuzu giriniz");
  int? not1 = int.parse(stdin.readLineSync()!);
  print("ikinci notunuzu giriniz");
  int? not2 = int.parse(stdin.readLineSync()!);

  double ortalama = (not1 + not2) / 2;
  print("not ortalaması : $ortalama");

  */

  // 2 - fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hea+saplayan algoritmayı yazın

  print("ürünün fiyatını giriniz");
  int? urunFiyati = int.parse(stdin.readLineSync()!);

  double zamliFiyat = urunFiyati + ((urunFiyati * 18) / 100);
  print("yeni Fİyat : $zamliFiyat");
}
