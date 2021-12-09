/**
 
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 
 */

//set yapısının kullanım örneği :
//bir kişi çekilişe birden çok kez katıldığı zaman listede ismi birden fazla olur ama set yapısında bir elemandan sadece bir tane olabileceği için birden çok kez katılsa bile isminden bir tane olur.

void main(List<String> args) {
  Set<String> isimler = Set();
  // var isimler = Set(); --> bu satır yukarıdakiyle aynıdır. çalışma anında set olduğu anlaşılır.
  isimler.add("hasan");
  isimler.add("hasan");
  isimler.add("emre");
  isimler.add("ali");
  isimler.add("ayşe");
  isimler.add("hasan");
  isimler.add("abdu");
  isimler.add("ali");

  bool sonuc = isimler.remove("emre");
  print("sonuc : $sonuc");

  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1, 2, 2, 2, 2, 3, 3, 3, 4, 3, 5, 3, 4, 1]);

  List<int> ciftsayilar = [0, 2, 4, 6, 8, 10, 8, 6, 2, 0];

  for (int s1 in numaralar) {
    print("no : $s1");
  }
  numaralar.clear();
  numaralar.addAll(ciftsayilar);

  for (int s1 in numaralar) {
    print("added no  : $s1");
  }
}
