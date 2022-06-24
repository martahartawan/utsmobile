import 'package:flutter/material.dart';

class Materigaya extends StatelessWidget {
  const Materigaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Materi Gaya")),
      ),
      body: Container(
        color: Color.fromARGB(255, 194, 215, 235),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rumus dari Gaya adalah massa(m) * percepatan(a).",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                )
              ]),
        ),
      ),
    );
  }
}
