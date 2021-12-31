import 'myStack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();

  myStack.push(5);
  myStack.push("emre");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();

  intMyStack.push(5);

  //yalnızca int değer kabul ettiği için string eklemeye çalışırsak hata verir
  // intMyStack.push("emre");

  StringMyStack stringMyStack = StringMyStack();

  stringMyStack.push("emre");

  //bu class da yalnızca string değer kabul ettiği için int eklemeye çalışırsak hata verir.
  // stringMyStack.push(5);

  //Generic yapısı ile ayrı ayrı class lar oluşturmak yerine bir class oluşturuyoruz ve main de class ı kullanacağımız zaman veri tipine karar veriyoruz

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
  // genericStack.push(5); --> hata verir

  GenericStack<int> genericStack1 = GenericStack();
  // genericStack.push("emre"); --> hata verir
  genericStack1.push(5);
  print(genericStack1.pop());
}
