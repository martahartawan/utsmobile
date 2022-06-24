import 'package:flutter/material.dart';

class Hasilgaya extends StatelessWidget {
  Hasilgaya({required this.massa, required this.percepatan});

  final int massa;
  final int percepatan;

  @override
  Widget build(BuildContext context) {
    int hasil = massa * percepatan;
    String hasilnya = hasil.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Rumus Gaya"),
      ),
      body: Center(
          child: Text(
        "Hasil : $hasilnya",
        style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
      )),
    );
  }
}
