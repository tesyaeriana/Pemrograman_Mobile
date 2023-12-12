# Pemrograman Asynchronous di Flutter

A new Flutter project.

## Praktikum 1
### Soal 1
```
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the future Tesya'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
```
### Soal 2
```
Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/VYurDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
}
```
#### W12:Soal 2
![Screenshot books](images/p1S2.png)

### Soal 3
```
 setState(() {});
                getData().then((value) {
                  result = value.body.toString().substring(0, 450);
                  setState(() {});
                }).catchError((_) {
                  result = 'An error occurred';
                  setState(() {});
                });
```
maksud dari kode program diatas yaitu Kode tersebut dapat diperbaiki dengan menyusun ulang logika pengambilan data dan penanganan error, serta memastikan pemanggilan setState hanya dilakukan ketika perlu untuk memastikan efisiensi dan kejelasan kode.
![Screenshot books](images/p1S3.png)

### Soal4
```
Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

```
Penjelasan kode
![Screenshot books](images/p1S4.png)

### Soal5
```
late Completer completer;
  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }
```
Modifikasi OnPress
```
 getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                });
```
Penjelasan kode
![Screenshot books](images/p1S5.png)

### Soal6

```
Future calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }
```
Modifikasi OnPress
```
 getNumber().then((value) {
                  setState(() {
                    result = value.toString();
                  });
                }).catchError((e) {
                  result = 'An error occurred';
                });
              },
            ),
```

Penjelasan kode
![Screenshot books](images/p1S6.png)

### Soal  7
![Screenshot books](images/p1S7.png)

### Soal 8
```
 final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
  }
```
Langkah 1 menggunakan FutureGroup dari paket async untuk secara dinamis menambah dan menunggu beberapa futures sebelum menjumlahkan hasilnya. Sementara langkah 4 langsung menggunakan Future.wait dari Dart untuk menunggu sejumlah futures selesai secara bersamaan, mengumpulkan hasilnya dalam bentuk list untuk diolah.

### Soal 9
![Screenshot books](images/p1S9.png)

### Soal 10
```
Future handleError() async {
                try {
                  await returnError();
                } catch (error) {
                  setState(() {
                    result = error.toString();
                  });
                } finally {
                  print('Complete');
                }
              }
```
![Screenshot books](images/p1S10.png)

### Soal 11
```
 appBar: AppBar(
            title: const Text('Current Location Tesya')), // Prak 6 Soal 11
        body: Center(
```

### Soal 12

![Screenshot books](images/p1S12.png)