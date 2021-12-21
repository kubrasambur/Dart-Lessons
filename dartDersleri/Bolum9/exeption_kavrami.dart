void main(List<String> args) {
  print("program başladı");

  try {
    int sayi = 100 ~/ int.parse("emre");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e);
    print(e.message);
    print(e.source);
  } catch (e) {
    print("hata çıktı $e");
  } finally {
    print("finally, hata olsa da olmasa da çalışır");
  }

  print("program bitti");
}
