void main(List<String> args) {
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      //ekrana sadece çift sayılar yazdırır.
      print("$i");
    }
  }

  List isimListesi = ["emre", "hasan", "ali"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }

  for (int i = 0; i < isimListesi.length; i++) {
    print("okunan eleman " + isimListesi[i]);
  }

  ////////////////////////////////////////////////

  int sayac = 0;

  while (sayac < 3) {
    print("okunan sayac degeri $sayac");
    sayac++;
  }

  ////////////////////////////////////////////////

  int sayac2 = 0;
  do {
    print("okunan sayac degeri : $sayac2");
    sayac2++;
  } while (sayac2 < 5);

  ////////////////////////////////////////////////

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri : $i");
  }

  ////////////////////////////////////////////////

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("i 2.değeri : $i");
    } else {
      print("i değeri 5 den küçük olduğu için birşey yazdırmayacak");
      continue;
    }
  }

  ////////////////////////////////////////////////
  //çarpım tablosunu yazdırır
  distakiDongu:
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      if (i == 2) {
        break distakiDongu;
      }
      print("$i*$j = ${i * j}");
    }
  }
}
