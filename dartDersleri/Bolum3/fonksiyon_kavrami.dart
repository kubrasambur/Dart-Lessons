void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(6, 10);
  //print("alan : $sonuc");

  int hacim = hacimHesapla(5, 6, 10);
  //print("hacim : $hacim");

  print("çevre" + cevreHesapla(2, 3).toString());

  print("max olan sayi : " + maxOlaniBul(5, 6).toString());
}

void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  //print("çevre : $cevre");
}

int alanHesapla(int sayi1, int sayi2) {
  //print("alan ${sayi1 * sayi2}");
  return sayi1 * sayi2;
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

//kısa gösterim
int cevreHesapla(int en, int boy) => en * boy;

int maxOlaniBul(int s1, int s2) => s1 < s2 ? s2 : s1;
