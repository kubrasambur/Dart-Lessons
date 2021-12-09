void main(List<String> args) {
  var listem = <String>[];

  //içi boş iken map , dolu iken set gibi davranır.
  //map de kay value ilişikisi olduğu için tek bi değer yazdığımız zaman set gibi davranır. ama key value çifti yazdığımız zaman map gibi  davranır.
  var mySet = {};
  var mySet1 = <String>{"kubra", "eda"};
  var map = <String, dynamic>{"yas": 21};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //böyle yaparsak ilk elemanına bir liste ikinci elemanına da diğer listeyi ekler. iki tane liste şeklinde görünür.
  // var sonListe = [tekSayilar, ciftSayilar];

  //spread operator
  var sonListe = [...tekSayilar, ...ciftSayilar];

  // sonListe.addAll(tekSayilar);
  // sonListe.addAll(ciftSayilar);

  print(sonListe);

  var map1 = {"ad": "kubra"};
  var map2 = {"yas": 21};

  var sonMap = {...map1, ...map2};
  print(sonMap);

  var set1 = {"kubra"};
  var set2 = {"emre"};
  var set3 = {"kubra"};
  var set4 = {"ayse"};

  var sonSet = {...set1, ...set2, ...set3, ...set4};

  print(sonSet);
}
