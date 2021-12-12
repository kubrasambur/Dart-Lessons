//immutable = değişmez
void main(List<String> args) {
  const Student kubra = Student(11, "kubra");
  final Student kubra2 = const Student(11, "kubra");
  var kubra3 = const Student(11, "kubra");
  //kubra3 nesnesi var ile tanımlandığı için yeni değer atanabilir

  if (kubra == kubra2 && kubra == kubra3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
  //kubra.id = 5; --> id değişkenini final tanımladığımız burada değişemeyiz. hata veriyor
}

class Student {
  final int id;
  final String isim;

  //aynı değerlere sahip iki öğrenci olduğu zaman bellekte farklı farklı yerler tutmamaları için constructor u const olarak tanımlamamız gerekiyor. aynı şekilde nesne oluştururken de başına const yazmamız gerekiyor.
  const Student(this.id, this.isim);
}
