import 'package:flutter/material.dart';
import 'materipercepatan.dart';
import 'materigaya.dart';

class Materi extends StatefulWidget {
  const Materi({Key? key}) : super(key: key);

  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Text("Materi Percepatan"),
                  style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      primary: Colors.blue,
                      padding: EdgeInsets.all(20),
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Materipercepatan();
                    }));
                  },
                ),
              ),
              SizedBox(width: 30),
              ElevatedButton(
                child: Text("Materi Gaya"),
                style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Materigaya();
                  }));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
