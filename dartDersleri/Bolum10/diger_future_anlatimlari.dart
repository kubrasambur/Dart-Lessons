void main(List<String> args) async {
  print("program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000; i++) {
      toplam += i;
    }
    return toplam;
    //throw Exception("toplam hesaplanamadı");
  });

  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  try {
    int forsonuc = await toplam;
    print("******* $forsonuc");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value("emre");
  var f3 = Future.error("hata");

  f3.catchError((hata) => print(hata));
}
