/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.
Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.
ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.
 */

void main(List<String> args) {
  Mathematic m1 = Mathematic(5, 1);
  m1.addition();
  m1.extraciton();

  Mathematic m2 = Mathematic(6, 4);
  m2.addition();
  m2.extraciton();

  print(Mathematic.PI);

  Mathematic.sinifAdiniSoyle();
  //totalOperation u static tanımladığımız için nesneden değil sınıftan erişiyoruz.böylece yapılan toplam işlem sayısına ulaşıyoruz
  print("toplam işlem sayisi : ${Mathematic.totalOperation}");
}

class Mathematic {
  //instance variable
  int firstNumber = 0;
  int secondNumber = 0;
  //toplam işlem sayısını hesaplarken her bir nesneden sonra sıfırlanıyor. nesne farketmeksizin toplam işlemleri hespalamak için static olarak tanımlamamız gerekiyor.
  static int totalOperation = 0;

  //class variable : sınıf adını kullanarak erişebiliriz. nesne üretmemize gerek yok.
  static double PI = 3.14;

  //bu fonksiyon static olduğu için burada static olmayan değişkenleri kullanamayız
  static void sinifAdiniSoyle() {
    print("ben matematik sınıfındanım");
  }

  Mathematic(this.firstNumber, this.secondNumber);

  void addition() {
    totalOperation++;
    print("Toplam : ${firstNumber + secondNumber}");
  }

  void extraciton() {
    totalOperation++;
    if (firstNumber > secondNumber) {
      print("Fark : ${firstNumber - secondNumber}");
    } else {
      print("Fark : ${secondNumber - firstNumber}");
    }
  }
}
