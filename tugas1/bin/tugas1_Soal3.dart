import 'dart:io';

//fungsi untuk mengembalikan nilai hasil dari operasi faktorial
double Faktorial(double x) {
  if (x == 0) {
    return 1;
  } else {
    return x * Faktorial(x - 1);
  }
}

void main() {
  print("Soal-3");

  //inisialisasi
  double faktorial1 = Faktorial(10);
  double faktorial2 = Faktorial(20);
  double faktorial3 = Faktorial(30);

  //Output
  print("Faktorial dari 10 adalah $faktorial1");
  print("Faktorial dari 20 adalah $faktorial2");
  print("Faktorial dari 30 adalah $faktorial3");
}
