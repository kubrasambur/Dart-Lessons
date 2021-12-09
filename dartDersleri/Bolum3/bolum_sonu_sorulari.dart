//SORU 1 : parametre olarak bir tane int sayı alan fonksiyonu yazınız. bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün

//SORU 2 : daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı. Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapılsın

//SORU 3 : bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu yazdırsın, geriye bir değer döndürmesin.

void main(List<String> args) {
  int tplam = toplamfunc(5);
  //print("çift sayıların toplamı : $tplam");

  double alan = daireAlani(10, 10);
  //print("daiarenin alanı : $alan");

  ucgenturu(kenar1: 5, kenar3: 5, kenar2: 5);
}

//soru1
int toplamfunc(int sayi) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }

  return toplam;
}

//soru2
double daireAlani(int r, int h, [double PI = 3.14]) {
  double alan = PI * r * r * h;
  return alan;
}

//soru3
void ucgenturu({int kenar1 = 0, int kenar2 = 0, int kenar3 = 0}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("bu üçgen eşkenardır");
  } else if (kenar1 == kenar2 || kenar1 == kenar3 || kenar2 == kenar3) {
    print("bu üçgen ikiz kenardır");
  } else {
    print("bu üçgen çeşit kenardır");
  }
}
