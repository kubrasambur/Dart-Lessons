/*

1- Dart dilinde interface kavramı yoktur. Ama sınıfları implements anahtar kelimesi ile interface miş gibi kullanabiliriz.

2- İnterfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.

3- İnterface olarak kullanılan sınıfların metotları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.

4- İnterfaceler sayesinde dart dilinde olmayan çoklu kalıtım sağlanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.

*/

void main(List<String> args) {}

abstract class Animal {
  void soyutOlmayanMetot() {
    print("metodun tanımı");
  }
}

abstract class AbleToFly {
  void fly();
  void test() {
    print("test");
  }
}

abstract class AbleToBark {
  void bark();
}

abstract class AbleToRun {
  void run();
}

//birden fazla sınıfın özelliklerini kullanabilmek için extends yerine implements kullanılır
class Dog extends Animal implements AbleToBark, AbleToRun {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

//Bird class ı AbleToFly class ını implement ettiği için o sınıftaki bütün fonksiyonları barındırmak zorunda. İçi boş da olsa dolu da olsa. Ama AbleToFly sınıfını extemds etseydi o zmaan gerek kalmazdı içi dolu fonksiyonları da barındırmasına.
class Bird extends Animal implements AbleToFly {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Human implements AbleToRun {
  @override
  void run() {
    // TODO: implement run
  }
}
