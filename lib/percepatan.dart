// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'resultpercepatan.dart';

class Percepatan extends StatefulWidget {
  const Percepatan({Key? key}) : super(key: key);

  @override
  State<Percepatan> createState() => _PercepatanState();
}

class _PercepatanState extends State<Percepatan> {
  int v = 0;
  int t = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Menghitung Percepatan")),
        ),
        body: Container(
          color: Color.fromARGB(255, 194, 215, 235),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Kecepatan',
                      suffix: Text("v")),
                  onChanged: (txt) {
                    setState(() {
                      v = int.parse(txt);
                    });
                  }),
              TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'waktu',
                      suffix: Text("t")),
                  onChanged: (txt) {
                    setState(() {
                      t = int.parse(txt);
                    });
                  }),
              SizedBox(height: 50),
              ElevatedButton(
                child: Text(
                  "Hitung Percepatan",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Hasilpercepatan(
                                waktu: t,
                                kecepatan: v,
                              )));
                },
              )
            ],
          ),
        ));
  }
}
