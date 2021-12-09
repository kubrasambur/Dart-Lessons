void main(List<String> args) {
  int sayi1 = 12;
  num sayi2 = 14;

  if (sayi1 > sayi2) {
    print('$sayi1 sayisi $sayi2 sayısından büyüktür');
  } else if (sayi2 > sayi1) {
    print('$sayi2 sayisi $sayi1 sayısından büyüktür');
  } else {
    print('sayılar eşittir');
  }

  print('***************************************');

  int notDegeri = 75;
  if (notDegeri > 90) {
    print('Notunuz AA');
  } else if (notDegeri > 80 && notDegeri < 90) {
    print('notunuz BA');
  } else if (notDegeri > 70 && notDegeri < 80) {
    print('notunuz BB');
  } else {
    print('notunuz BB den düşük');
  }
}
