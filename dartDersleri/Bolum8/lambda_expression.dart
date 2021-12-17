/*
Lambda : ismi olmayan fonksiyonlardır.Dartta her fonksiyon aslında bir nesnedir.
*/

//lambda expression - isimlendirilmemiş fonksiyon
void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 8);
  String isim = "kubra";
  //kullanmak için değişkene atıyoruz
  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);

  print(f3(6));
}

//normal fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
