// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'resultgaya.dart';

class Gaya extends StatefulWidget {
  const Gaya({Key? key}) : super(key: key);

  @override
  State<Gaya> createState() => _GayaState();
}

class _GayaState extends State<Gaya> {
  int m = 0;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Menghitung Gaya")),
        ),
        body: Container(
          color: Color.fromARGB(255, 194, 215, 235),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // Expanded(child: Image.asset('images/marta.JPG')),
              TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Massa',
                      suffix: Text("m")),
                  onChanged: (txt) {
                    setState(() {
                      m = int.parse(txt);
                    });
                  }),
              TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Percepatan',
                      suffix: Text("a")),
                  onChanged: (txt) {
                    setState(() {
                      a = int.parse(txt);
                    });
                  }),
              SizedBox(height: 50),
              ElevatedButton(
                child: Text(
                  "Hitung Gaya",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Hasilgaya(
                                massa: m,
                                percepatan: a,
                              )));
                },
              )
            ],
          ),
        ));
  }
}
