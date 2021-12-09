/*

 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};
  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String, dynamic> kubra = {"soyad": "sambur", "yas": 21, "bekarMi": true};

  print(kubra["yas"]);

  for (String oankianahtar in kubra.keys) {
    print(oankianahtar);
    print(kubra[oankianahtar]);
  }

  for (dynamic deger in kubra.values) {
    print(deger);
  }

  for (var element in kubra.entries) {
    print("key değeri : ${element.key} , değeri : ${element.value}");
  }

  if (kubra.containsKey("yas")) {
    print("bulunan yas değeri : ${kubra['yas']}");
  }

  //boş map oluşturma :
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  //boş map a değer atama :
  deneme2["yas"] = 55;
  print(deneme2);
}
