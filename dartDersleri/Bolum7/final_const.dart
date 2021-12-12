void main(List<String> args) {
  //bu örnekte str artık "sambur" un adresini tutar.
  var str = "kubra";
  str = "sambur";

  //final ile tanımladığımız zaman değiştiremiyoruz. bir kez set edilir.
  /*
  final str2 = "kubra";
  str2 = "sambur"; -->bu satır hata veriyor
  */

  //const ile tanımlanan değişkenlerin de değerleri sonradan değiştirilemez
  /*
  const str3 = "kubra";
  str3 = "sambur"; -->bu satır hata veriyor
  */

  //burada değişkene atadığımız değer program çalışmadan önce belli olduğu için const kullanabilir.
  const sayi = 5;
  final sayi1 = 10;

  //burada değişkene atanan değer program çalıştığı anda belli olduğu için const ile tanımlanamaz. final kullanmalıyız.
  /*
  final tarih = DateTime.now();
  const tarih2 = DateTime.now(); -->bu satır hata veriyor
  */

  //bu örnek final ile eşit değildir listelerin bellek adresleri farklı olduğu için. ama const ile tanımlarsak eşittir.

  //bu şekilde bellekte 2 farklı adrese sahip alan oluşturuluyor ama const ile olunca bütün değişkenler tek bir alanı gösterir
  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  //canonicalized
  //değişkenlerin hepsi aynı yeri gösteriyor
  const liste11 = [1, 2, 5];
  const liste12 = [1, 2, 5];
  const liste13 = [1, 2, 5];

  //listelerin final ile tanımlanmış olmasına rağmen eleman eklenebilir çünkü değişkenin gösterdiği adresi değiştirmiyoruz sadece eleman ekliyoruz.

  //eğer listeleri const ile tanımlamış olsaydık içeriği de değiştiremezdik yani eleman ekleyemezdik
  liste.add(5);
  liste2.add(8);

  //liste değişkeni final ile tanımlandığı için bu şekilde yeni bir yapı oluşturamıyoruz.
  //liste = [5, 60]; -->bu satır hata veriyor

  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
