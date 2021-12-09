/* VERI TİPLERİ VE DEĞİŞKEN KAVRAMI
DEGİSKEN :  Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya almaktır. İşlem yapmak istediğimizde de 
veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. Hafızadaki verirleri ifade etmek için programlama dillerinde 
değişkenleri kullanırız. Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri bilgisayarın
hafızasında tutmak için yapmış olduğumuz tanımlamalardır.
Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built - in olarak şu tipleri içerir.
- Number
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false
- List (dizi olarak da bilinir)
- Maps
- Runes (String formattaki unicode karakterler)
- Symbols 
Tüm veri tipleri Object yani nesneleridir. Bu yüzden varsayılan değerleri null'dir.
var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. Atanan ifadeye göre otomatik olarak türü belirtr
*/

void main(List<String> args) {
  int yas = 21;
  String isim = 'Kubra';
  double ortalama = 55.5;
  bool ErkekMi = true;
  num yil = 2021;
  print(yil + yas);
  print(ErkekMi);

  var yas2 = 22;
  var isim2 = 'Kubra';
  print(yas2.toString() + isim2);

  // dart null safety dir. yani bir değişkene değer atamadığımız zaman null yazmak yerine hata verir
  // var ile tanımlarsak olur. int ile olmaz hata verir
  // int degisken ==> hata verir
  var degisken;
  print(degisken);

  // yine de null atamak istiyorsak aşağıdaki gibi yaparız :
  int? s1 = null; //s1 null olabilir
  print(s1); //yanında + koyarak birşey ekleyemeyiz

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
