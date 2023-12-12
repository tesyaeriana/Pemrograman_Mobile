import 'package:flutter/material.dart';

// Prak 8 Langkah 5
class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Shofiatul"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text("Red"),
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
              child: const Text("Green"),
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                }),  
            ElevatedButton(
              child: const Text("Blue"),
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                }),  
                const Spacer(),
          ],
        ),
      ),
    );
  }
}