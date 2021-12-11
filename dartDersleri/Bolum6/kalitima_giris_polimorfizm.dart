/*

 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 
Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.
Extends deyimi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.
Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları : 
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.
Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 
*/

void main(List<String> args) {
  User user1 = User();

  var user2 = NormalUser();

  AdminUser normal1 = AdminUser();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();

  User user3 = AdminUser(); //upcasting yukarı çevirim
  User user4 = SadeceOkuyabilenNormalUser();

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user);

  test(user1);
  test(user2);
  test(normal1);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("toplam user sayisi 20");
  }

  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Sadece Okuyabilen Normal User giriş yaptı");
  }
}
