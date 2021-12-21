import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
    //değer i gösterirken virgülden sonra 2 basamak göster
    print("değer : ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  if (i < 0) {
    throw FormatException("sayı negatif olamaz");
    //yukarıdaki satırda hata fırlatılacağı için tekrar hatanın olduğu yere yani maindeki fonksiyona gidecek.burası okunmayacak
    print("jldfk");
  }
  return sqrt(i);
}
