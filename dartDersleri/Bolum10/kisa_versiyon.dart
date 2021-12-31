void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  uzunSurenIslem()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("ekmek alma operasyonu bitti"));
  print("Peynir zeytin hazırlanır");
  print("Masa hazır");
}

Future<String> uzunSurenIslem() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer";
  });
}
