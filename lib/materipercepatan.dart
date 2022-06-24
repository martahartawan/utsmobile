import 'package:flutter/material.dart';

class Materipercepatan extends StatelessWidget {
  const Materipercepatan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Materi Percepatan")),
      ),
      body: Container(
        color: Color.fromARGB(255, 194, 215, 235),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rumus dari Percepatan adalah Kecepatan(v) / waktu(t).",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                )
              ]),
        ),
      ),
    );
  }
}
