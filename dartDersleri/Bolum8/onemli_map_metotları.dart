void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "emre";
  map["renk"] = "yeşil";

  var yeniMap = Map.from({"deger": "yeni"});
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
  var mapfromIterable = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print(mapfromIterable);

  //update methodu istediğimiz key i yazarak value sini güncellemeye yarar. eğer girdiğimiz key yoksa ifabsent (eğer yoksa) kullanarak o key i ve valuesini ekleriz.
  map.update("id_yeni", (value) => value * 5, ifAbsent: () => 100);
  print(map);

  //eğer girilen key yok ise key i ve valuesiini ekler ama key varsa değiştirmez eskisini yazdırır.
  map.putIfAbsent("soyisim", () => "sambur");
}
