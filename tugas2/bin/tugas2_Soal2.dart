import 'dart:io';

Future<List<int>> multiplyList(List<int> listData, int multiplier) async {
  List<int> hasil = [];

  await Future.forEach(listData, (int list) async {
    // Delay sengaja ditambahkan untuk menunjukkan karakter asinkron fungsi ini
    await Future.delayed(Duration(seconds: 1));
    hasil.add(list * multiplier);
  });

  return hasil;
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int multiplier = 5;

  List<int> hasil = await multiplyList(data, multiplier);

  print("List data: $data");
  print("List baru setelah dikalikan dengan $multiplier: $hasil");
}
