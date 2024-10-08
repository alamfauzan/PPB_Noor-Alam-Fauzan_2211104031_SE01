import 'dart:io';

String evaluasiNilai(int skor) {
  if (skor > 70) {
    return 'Nilai A';
  } else if (skor > 40) {
    return 'Nilai B';
  } else if (skor > 0) {
    return 'Nilai C';
  } else {
    return ''; // Teks kosong
  }
}

void main() {
  // Menerima input nilai dari user
  stdout.write('Masukkan skor: ');
  int? skor = int.tryParse(stdin.readLineSync()!);

  if (skor != null) {
    // Memanggil fungsi evaluasiNilai dan mencetak hasilnya
    String hasil = evaluasiNilai(skor);
    if (hasil.isNotEmpty) {
      print('$skor merupakan $hasil');
    } else {
      print('Skor tidak valid.');
    }
  } else {
    print('Input tidak valid.');
  }
}
