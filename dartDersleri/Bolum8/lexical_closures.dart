/*
Closure özel bir fonksiyondur. closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
*/

//lexical variable scope
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(mainDegiskeni);
      print(aDegiskeni);
    }
  }

  /*

  //topla fonksiyonunu çağırdığımız zaman bize döndüreceği fonksiyonu d değişkenine atadık
  var d = topla(10);

  //d değişkeni de artık bi fonksiyon olduğu için aldığı değer ile gerekli işlemi yapar ve sonuc değişkenine atar.
  var sonuc = d(4);

  print(sonuc);

  */

  var dondurulenFonskiyon = topla(3);
  var sonuc = dondurulenFonskiyon(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
