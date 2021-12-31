void main(List<String> args) {
  print("internetten kişi verisi getirilecek");
  kisiIleIlgiliIslemler();
  print("başka işlemler yapılacak");
  print("işlem bitti");
}

void kisiIleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kişi adı : Emre ve id:100";
  });
}
