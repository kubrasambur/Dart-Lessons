void main(List<String> args) {
  //int toplam = sayilariTopla(5, 6, 7);

  //int toplam = sayilariTopla(2, 6, 5);

  int toplam = sayilariTopla(5, sayi1: 5, sayi3: 6, sayi2: 7);
  print("toplam : $toplam");
}

//requred parameter
/*
int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}
*/

//null olması istenen durumlarda default değer atanır

//optional parameter
/*
int sayilariTopla(int sayi1, int sayi2, [int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}
*/

//optional named
//eğer reqired parametre varsa başa yazılır
int sayilariTopla(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi2 + sayi3;
}
