/*

1- Private değişken ve fonksiyonlar : bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. bu durumlarda _ işareti ile bunları saklarız.

2- Getter metotlar : sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.

3- Setter metotlar : sınıf değişkenlerine veri atamak için kullanılır. bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır. ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.

*/

import 'musteri.dart';
import 'veritabaniIslemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(952);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 658;
  print(m1.musteriNoSoyle);

  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameAndPassword("kubra2", "123");

  bool sonuc = db2.baglan();

  if (sonuc) {
    print("bağlandım");
  } else {
    print("bağlanamadı");
  }
}
