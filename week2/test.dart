// test.dart
import 'dart:io';
import 'faktorial.dart';
import 'fibonacci.dart';
import 'biner.dart';

void main() {
  bool lanjut = true;

  while (lanjut) {
    print("\nPilih menu:");
    print("1. Hitung Faktorial");
    print("2. Hitung Fibonacci");
    print("3. Konversi ke Biner");
    print("0. Keluar");

    stdout.write("Masukkan pilihan: ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      stdout.write("Masukkan angka: ");
      int n = int.parse(stdin.readLineSync()!);
      print("Faktorial dari $n = ${faktorial(n)}");

    } else if (pilihan == 2) {
      stdout.write("Masukkan N: ");
      int n = int.parse(stdin.readLineSync()!);
      print("Fibonacci ke-$n = ${fibonacci(n)}");

    } else if (pilihan == 3) {
      stdout.write("Masukkan angka: ");
      int n = int.parse(stdin.readLineSync()!);
      print("Biner dari $n = ${toBinary(n)}");

    } else if (pilihan == 0) {
      print("Terima kasih, program selesai.");
      break;
    } else {
      print("Pilihan tidak valid!");
    }

    stdout.write("Apakah ingin lanjut? (y/n): ");
    String? jawab = stdin.readLineSync();
    if (jawab?.toLowerCase() != 'y') {
      lanjut = false;
    }
  }
}
