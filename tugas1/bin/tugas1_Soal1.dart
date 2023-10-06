import 'package:tugas1/tugas1.dart' as tugas1;

void main() {
  print("Soal-1");

  //inisialisasi
  const pi = 3.14;
  double r = 7;

  //melakukan operasi (luas & keliling)
  double luasO = pi * r * r;
  double kelO = 2 * pi * r;

  //output
  print("Keliling Lingkaran dengan ruas = $r adalah $kelO");
  print("Luas Lingkaran dengan ruas = $r adalah $luasO");
}
