import 'package:tugas2/tugas2.dart' as tugas2;

class Hewan {
  int berat; //inisialisasi(ptoperty) untuk menampung berat badan hewan

  Hewan(this.berat); //konstruktor
}

class Mobil {
  int kapasitas; //inisialisasi(ptoperty) untuk menyimpan nilai maks
  List<Hewan> muatan = []; //inisialisasi(ptoperty) untuk menyimpan data hewan

  Mobil(this.kapasitas); //konstruktor

  //method tambah muatan
  void tambahMuatan(Hewan hewan) {
    //pengkodisian unruk menambah data hewan
    if (hitungTotalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("");
      print("Muatan berhasil ditambahkan! ");
      print("Total berat muatan sekarang: ${hitungTotalMuatan()} kg");
    } else {
      print("Muatan melebihi kapasitas mobil!");
    }
  }

  //fungsi untuk menghitung total muatan
  int hitungTotalMuatan() {
    return muatan.fold(0, (total, hewan) => total + hewan.berat);
  }
}

void main(List<String> arguments) {
  Mobil mobil = Mobil(1000);
  print("Mobil ini memiliki kapasitas : ${mobil.kapasitas} kg");

  // Tambahkan muatan ke mobil
  Hewan h1 = Hewan(25);
  Hewan h2 = Hewan(100);
  Hewan h3 = Hewan(75);
  Hewan h4 = Hewan(80);
  Hewan h5 = Hewan(200);

  mobil.tambahMuatan(h1);
  mobil.tambahMuatan(h2);
  mobil.tambahMuatan(h3);
  mobil.tambahMuatan(h4);
  mobil.tambahMuatan(h5);

  // Tampilkan total berat muatan mobil
  print("");
  print(
      "Total berat muatan mobil yang diangkut: ${mobil.hitungTotalMuatan()} kg");
}
