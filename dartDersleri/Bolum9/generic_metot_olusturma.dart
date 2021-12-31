void main(List<String> args) {
  double doubleOrtalama = ortalamaBul<double>(5, 5.4);
  double intOrtalama = ortalamaBul<int>(5, 7);
  print("ortalama $doubleOrtalama");
  print("ortalama $intOrtalama");
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
