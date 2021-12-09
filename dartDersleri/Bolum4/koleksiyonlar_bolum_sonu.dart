import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //soru 1

  //1- Şehirleri tutan bir liste oluşturun. 4 tane il ekleyip sırayla ekrana yazdırın.

  /*

  List<String> sehirler = List.filled(4, "");
  
  sehirler[0] = "ankara";
  sehirler[1] = "istanbul";
  sehirler[2] = "izmir";
  sehirler[3] = "manisa";

  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }

  */

  //soru 2

  //2- Keyleri string, değerleri dynamic olan bir map oluşturu. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını, ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.

  /*

  Map<String, dynamic> pc = {};
  pc["islemci"] = 6;
  pc["ram"] = 16;
  pc["ssdMi"] = true;

  for (var oankientry in pc.entries) {
    // print(oankientry);
    print("Bilgisayar bilgileri : ${oankientry.key} = ${oankientry.value} ");
  }

  */

  //soru 3

  //3- Her bir elemanında keyleri string, value leri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il //adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı  bir şekilde yazdırın.

  /*

  List<Map<String, dynamic>> sehirler = <Map<String, dynamic>>[];

  Map<String, dynamic> eklenecekSehir1 = <String, dynamic>{};
  eklenecekSehir1["il adı"] = "Ankara";
  eklenecekSehir1["ilçe sayısı"] = 15;
  eklenecekSehir1["plaka kodu"] = 06;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il adı"] = "Bursa";
  eklenecekSehir2["ilçe sayısı"] = 12;
  eklenecekSehir2["plaka kodu"] = 16;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il adı"] = "istanbul";
  eklenecekSehir3["ilçe sayısı"] = 21;
  eklenecekSehir3["plaka kodu"] = 34;

  sehirler.add(eklenecekSehir1);
  sehirler.add(eklenecekSehir2);
  sehirler.add(eklenecekSehir3);
  sehirler.add({"il adı": "İzmir", "ilçe sayısı": 10, "plaka kodu": 35});

  // print(sehirler);

  for (int i = 0; i < sehirler.length; i++) {
    var oankisehirMapYapisi = sehirler[i];
    print(
        "Listenin ${i + 1}. elemanınında bulunan şehir adı : ${oankisehirMapYapisi["il adı"]}  ilçe sayısı : ${oankisehirMapYapisi["ilçe sayısı"]}  plaka kodu : ${oankisehirMapYapisi["plaka kodu"]}");
  }
  */

  //soru 4

  // 4- 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50 ye rastgele şekilde oluşturulsun. Bu elemanları tek bir listeye aktarın. Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.

  /*

  List<int> liste1 = List.filled(5, 0);

  var liste2 = List<int>.filled(5, 0);

  List<int> sonListe = <int>[];

  Set<int> sonSetYapisi = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);

  sonListe = [...liste1, ...liste2];

  print(sonListe);

  for (int gecici in sonListe) {
    sonSetYapisi.add(gecici * gecici);
  }
  print(sonSetYapisi);

  */

  //soru 5

  // 5- kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.

  int girilenNot = 0;

  List<int> girilenNotlar = <int>[];
  List<int> girilenNotlar2 = List.empty(growable: true);

  do {
    print("lütfen notunuzu giriniz , çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("${girilenNotlar.length} tane not girildi.");

  double ortalama = ListedekiElemanlarinToplami(girilenNotlar);
  print("notların ortalaması $ortalama");
}

double ListedekiElemanlarinToplami(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam += liste[i];
  }
  return toplam / liste.length;
}
