import 'package:flutter/material.dart';

class Hasilpercepatan extends StatelessWidget {
  Hasilpercepatan({required this.waktu, required this.kecepatan});

  final int waktu;
  final int kecepatan;

  @override
  Widget build(BuildContext context) {
    double hasil = kecepatan / waktu;
    String hasilnya = hasil.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Rumus Percepatan"),
      ),
      body: Center(
          child: Text(
        "Hasil : $hasilnya",
        style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
      )),
    );
  }
}
