/*
higher order function : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
*/

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /*
  liste.forEach((element) {
    print("Element : $element");
  });
  */
  //yukarıdaki işlemin yerine aşağıdakini kullanabiliriz
  //burada callback fonksiyonunu çalıştırırken parantez açıp kapatmadık. çünkü o işlemi foreach yapıyor.foreach fonksiyon tipinde bir değer beklediği için sadece fonksiyonun ismini yazıyoruz. çalıştırmıyoruz.
  liste.forEach(callback);

  kendiforeachYapim(liste, (int deger, int index) {
    print("Değer : $deger ve indexi : $index");
  });
}

void kendiforeachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void callback(int element) {
  print("Element : $element");
}
