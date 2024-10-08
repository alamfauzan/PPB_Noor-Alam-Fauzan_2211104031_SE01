import 'dart:io';

void cetakPiramida() {
  // Menerima input tinggi piramida dari user
  stdout.write('Masukkan tinggi piramida: ');
  int? tinggi = int.tryParse(stdin.readLineSync()!);

  if (tinggi != null && tinggi > 0) {
    for (int baris = 1; baris <= tinggi; baris++) {
      // Cetak spasi untuk mengatur posisi bintang
      stdout.write(' ' * (tinggi - baris));
      // Cetak bintang
      stdout.write(List.generate(baris, (_) => '*').join(' '));
      // Pindah ke baris berikutnya
      print('');
    }
  } else {
    print('Input tidak valid. Masukkan angka yang lebih besar dari 0.');
  }
}

void main() {
  cetakPiramida();
}
