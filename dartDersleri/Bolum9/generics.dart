/*

--Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.

--Sürekli kullanılan koleksiyon yapıları(list,map,set) varsayılan olarak heterojendir. Yani koleksiyon yapısında farklı türde veriler saklayabilirsiniz. Ama yapmalı mısınız?

--Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur, compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir. Böylece run time da çıkabilecek hataların önüne geçilir. 

--Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.

--Generic'ler dartta bulunan çoğu yapıda zaten vardır. List,map,set,Future , Stream gibi.. .Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren bir kod yapılarını tek bir yapıda toplayabilirsiniz. 

*/

void main(List<String> args) {
  //bu şekilde list tipi belirtmeden yazdığmız zaman hatalar karşımıza çıkabilir ondan dolayı liste tipi belirtmek daha iyi bir yöntem

  /*

  List liste = [];
  liste.add("emre");
  liste.add(2);
  liste.add(true);

  */
  List<String> liste = [];
  liste.add("emre");
  liste.add("emrdfdse");

  yazdir(liste);

  // List<E> --> Elemenet
  // Map<K> --> Key
  // Map<K, V> --> Value
  // R --> Metotların return tipleri için
  // Ogrenci<T extends Insan> --> buraya gelecek veri türü mutlaka insan sınıfından türetilmiş olsun
}

yazdir(List list) {
  print(list[1].length);
}
