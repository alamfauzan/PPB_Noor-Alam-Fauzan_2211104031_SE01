import 'dart:io';

bool adalahPrima(int bilangan) {
  if (bilangan < 2) {
    return false; 
  }
  for (int pembagi = 2; pembagi * pembagi <= bilangan; pembagi++) {
    if (bilangan % pembagi == 0) {
      return false; 
    }
  }
  return true; 
}

void periksaBilangan() {
 
  stdout.write('Masukkan bilangan bulat: ');
  int? bilangan = int.tryParse(stdin.readLineSync()!);

  if (bilangan != null) {
    if (adalahPrima(bilangan)) {
      print('$bilangan adalah bilangan prima');
    } else {
      print('$bilangan bukan bilangan prima');
    }
  } else {
    print('Input tidak valid.');
  }
}

void main() {
  periksaBilangan();
}
