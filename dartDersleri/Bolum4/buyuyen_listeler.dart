/*

 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indexteki elemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 
 */

void main(List<String> args) {
  List<int?> sayilar = [];
  //buraya ? ekleyerek null olabilecek int ların da var olabileceğini söyledik o yüzden dizinin eleman sayısını istediğimiz gibi artırabiliriz.

  // sayilar[0] = 1; --> bu satır sabit uzunluklu listelerde işe yarar. büyüyen listelerde hata verir

  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);

  print(sayilar);
  print(sayilar.length);
  sayilar.length = 100;
  print(sayilar.length);

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  // buradaki growable yi true yaparak listenin büyüyüp küçülebileceğini söyledik

  sayilar3.add(55);
  print(sayilar3);
  print(sayilar3.length);

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  //yukarıdaki iki liste aynı anlama geliyor. ikisi de bboi ve büyüyebilir liste.
}
