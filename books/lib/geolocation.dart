import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

// Prak 6 Langkah 5
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  // Prak 7 Langkah 2
  Future<Position>? position;
  @override
  void initState() {
    super.initState();
    // getPosition().then((Position myPos) {
    //   myPosition =
    //       'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });

    // // Prak 7 Langkah 3
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    // final myWidget =
    //     myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
    // ;

    return Scaffold(
        appBar: AppBar(
            title: const Text('Current Location Tesya')), // Prak 6 Soal 11
        body: Center(
          child: FutureBuilder(
              future: position,
              builder:
                  (BuildContext context, AsyncSnapshot<Position> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                   return const Text('Something terrible happened!');
                }
                return Text(snapshot.data.toString());
            } else {
              return const Text('');
                }
              }),
        ));
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();

    // Prak 7 Langkah 1
    await Future.delayed(const Duration(seconds: 10));
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}
