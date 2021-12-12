/*

 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 
 */

void main(List<String> args) {
  Sekil s1 = Kare(3);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(3, 4);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

//abstract class larda içi dolu fonksiyon gövdesi yazılmış fonksiyon da olabilir. ama en az 1 tane içi boş fonksiyon olmak zorunda
abstract class Sekil {
  double alanHesapla();

  double cevreHesapla();

  void selamla() {
    print("ben şekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("kare");
  }
}

class Dikdortgen extends Sekil {
  int uzunKenar;
  int kisaKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);
  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar.toDouble());
  }

  @override
  void selamla() {
    print("dikdörtgen");
  }
}
