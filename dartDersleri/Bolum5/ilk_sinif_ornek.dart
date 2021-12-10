//Nesneye yönelimli programlamaya giriş
/*

 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 
 */

void main(List<String> args) {
  int sayi = 5;
  var sayi2 = 10;

  Ogrenci kubra = Ogrenci();
  kubra.ogrAd = "Kubra Sambur";
  kubra.ogrNo = 123;
  kubra.aktifMi = true;

  var kemal = Ogrenci();
}

class Ogrenci {
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("ogrenci ders calisiyor");
  }
}
