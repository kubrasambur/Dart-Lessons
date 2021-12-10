//Soru 2 : Ogrenci isimli sınıf oluşturun. bu sınıfta öğrencinin id si ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri yazdıran metotu yazın.

class Ogrenci {
  int id = 1;
  int not = 1;

  Ogrenci({this.id = 1, this.not = 1});

  //kendi oluşturduğumuz veri tiplerini ekrana yazdırmak için toString metodunu kullanmamız gerekiyor.
  @override
  String toString() {
    // TODO: implement toString
    return "ID : $id, Not değeri : $not";
  }
}
