/*

 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri
 * kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.
 
 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 * 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
 *    SinifAdi.methodAdi(){
 *    buraya kodlar gelir.
 * }
 *   //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 
 */

void main(List<String> args) {
  Araba honda = Araba(2020, "honda", true);

  //parametreli constructor olduğu için bunlara gerek kalmadı
  /*
  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  */

  honda.bilgileriSoyle();

  var reno = Araba(2019, "reno", false);
  reno.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMethod(true, 2019);

  Araba suzuki = Araba.modelYiliOlmayanKurucuMethod("suzuki", true);

  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  // ya default ya da parametreli constructoe olabilir. ikisi aynı anda olamaz.

  // Araba() {
  //   print("kurucu method");
  // }

  /*
  Araba(int _modelYili, String _marka, bool _otomatikMi) {
    print("kurucu method");
    this.modelYili = _modelYili;
    this.marka = _marka;
    this.otomatikMi = _otomatikMi;
  }
  */

  //yukarıdakinin yerine aşağıdaki de kullanılabilir. aynı şey
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("kurucu method");
  }

  //isimlendirilmiş kurucu method
  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili);

  Araba.modelYiliOlmayanKurucuMethod(String __marka, bool __otomatikMi) {
    this.marka = __marka;
    this.otomatikMi = __otomatikMi;
  }

  void bilgileriSoyle() {
    print(
        "arabanın model yili : ${modelYili}, markası ${marka} , otomatik mi? : ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("Arabanın yaşı ${2021 - modelYili!}");
    else
      print("model yılı olmadığından yaş hesaplanamadı");
  }
}
