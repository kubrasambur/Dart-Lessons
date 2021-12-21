void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-5);
    print(emre.yas);
  } on AgeExepiton catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");
    //burada da hata yaparsak yine program hata verir p yüzden try catch kullanmalıyız
    try {
      Ogrenci emre = Ogrenci(-5);
      print(emre.yas);
    } catch (e) {
      print(e);
    }
  }
}

class AgeExepiton implements Exception {
  String mesaj;

  AgeExepiton({this.mesaj = "Age exeption"});

  @override
  String toString() {
    return "hatanın to string metodu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    //yas<0 ise hata fırlatır ve bu if yapısı birşey döndürmediği için nesne üretilmez
    if (yas < 0) {
      throw AgeExepiton(mesaj: "Age exeption - yaş negatif olamaz");
    } else
      this.yas = yas;
  }
}
