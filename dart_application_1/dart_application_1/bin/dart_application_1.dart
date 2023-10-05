import 'dart:io';

void main(List<String> arguments) {
  /*mencoba tipe data
  dynamic data = 'Hello World';
  data = 21; //SUCCESS
  var data = 'Hello World';
  data = 21; //ERROR
  print(data);*/
  predikatA(90);
  tampilemoji();
}

void predikatA(int nilai) {
  if (nilai >= 81) {
    print('A');
    print('Bagus');
  } else if (nilai > 76 && nilai <= 80) {
    print('B');
    print('Bagus aja');
  } else if (nilai > 71 && nilai < 75) {
    print('C');
    print('cukup bagus');
  } else if (nilai > 66 && nilai <= 70) {
    print('D');
    print('kurang');
  } else if (nilai < 66) {
    print('E');
    print('Mengulang');
  }
}

void tampilemoji() {
  for (int i = 1; i < 10; i++) {
    if (i < 5) {
      for (int j = 1; j <= i; j++) {
        stdout.write('😡');
      }
    } else {
      for (int j = 10; j > i; j--) {
        stdout.write('🤐');
      }
    }
    print('');
  }
}
