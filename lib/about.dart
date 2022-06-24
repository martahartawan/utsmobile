import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/marta.JPG'),
              radius: 100.0,
            ),
            const Text(
              "Gede Marta Hartawan",
              style: TextStyle(color: Colors.indigo, fontSize: 20),
            ),
            const Text(
              "1915101056",
              style: TextStyle(color: Colors.indigo, fontSize: 20),
            ),
            const Text(
              "Ilmu Komputer 6B",
              style: TextStyle(color: Colors.indigo, fontSize: 20),
            ),
          ],
        ),
      ),
    ));
  }
}
