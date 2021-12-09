/**
 * switch: ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir
 * her bir case'den sonra break denilerek switch yapısından cıkılmalıdır.
 * 
 *switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz.
*/

void main(List<String> args) {
  String notDegeri = 'DD';

  switch (notDegeri) {
    case 'AA':
      print('notunuz 90-100 arasındadır');
      break;
    case 'BB':
      print('notunuz 70-80 arasındadır');
      break;
    case 'CC':
      print('notunuz 60-70 arasındadır');
      break;
    default:
      {
        print('notunuz 0-50 arasındadır');
      }
  }
}
