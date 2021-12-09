// bu fonksiyonlar sabit boyutlu dizilerde çalışmaz

void main(List<String> args) {
  List<int> sayilar = [10, 8, 1, 22, 11];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print("boş mu : " + sayilar.isEmpty.toString());
  print("eleman sayisi : ${sayilar.length}");
  print("ters sırada : ${sayilar.reversed}");
  //yukarıdaki satır annlık olarak sayıları tersten yazdırır. kalıcı olarak yerini bozmaz.

  sayilar.add(23);
  print(sayilar);

  sayilar.remove(8);
  // ilk gördüğü yerdeki 8 elemanını listeden çıkarır. birden fazla varsa sadece ilk gördüğünü çıkarır.

  print(sayilar);

  sayilar.removeAt(3);
  // yukarıdaki satır verilen indexteki elemanı siler.
  print(sayilar);

  List<int> sayilar2 = [1, 2, 3];
  print(sayilar2);

  sayilar2.clear();
  print(sayilar2);

  if (sayilar.contains(10)) {
    print("listede 10 var");
  } else {
    print("listede 10 yok");
  }

  print(sayilar.elementAt(0));
  // yukarıdaki satır belirtilen indexteki elemanı getirir.

  print(sayilar.indexOf(22));
  //yukarıdaki satır belirtilen eleman kaçıncı indexteyse onu yazdırır.

  sayilar.shuffle();
  // suffle liste elemanları karıştırır. ve suffle ı kullandıktan sonra kalıcı olarak etki eder.
  print(sayilar);
}
