import 'dart:io';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();

  //ya then ya da catch error çalışır
  //when complete de her iki olasılıkta da çalışır
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazırlanır");
  print("Masa hazır");
}

//future yerine sleep kullandığımız zaman ondan sonraki işlemleri bekletir sleep bitinceye kadar ama future da diğer işlemler devam eder future.delay bitinceye kadar
Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    // return "Çocuk ekmekle eve girer";
    //hata fırlatacak olursa da :
    throw Exception("bakkalda ekmek kalmamış");
  });
  return sonuc;
}
