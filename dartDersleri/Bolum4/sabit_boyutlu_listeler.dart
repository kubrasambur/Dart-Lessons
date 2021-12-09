/*
List ikiye ayrılır
1-Sabit boyutlu listeler
2-Büyüyen listeler

* Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır. 
* List<int> numaralar = List.filled(10, 0);  // 10 eleman içeren sabit uzunluklu liste yani dizi.
* Index numaraları 0 dan başlar yani listenin ilk elemanına erişmekk için 0. indexine bakılır.
numaralar[0] diyerek

*/

void main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);

  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar);

  List<String> isimler = List.filled(2, " ");

  isimler[0] = 5.toString();
  isimler[1] = "kubra";

  print(isimler);

  List<dynamic> karisik = List<dynamic>.filled(5, 0);
  karisik[0] = "kubra";
  karisik[1] = 5;
  karisik[2] = false;

  print(karisik);

  //Liste elemanlarını gezmek

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }

  for (int oankieleman in sayilar) {
    print(oankieleman);
  }
}
