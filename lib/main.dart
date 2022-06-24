import 'package:flutter/material.dart';
import 'percepatan.dart';
import 'gaya.dart';
import 'about.dart';
import 'materi.dart';

void main() {
  runApp(new MaterialApp(
    home: new Halsatu(),
    title: "UTS",
  ));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Center(child: new Text("UTS")),
        ),
        body: bottomNavbar());
  }
}

class bottomNavbar extends StatefulWidget {
  const bottomNavbar({Key? key}) : super(key: key);

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  int _selectedIndex = 0;

  final screens = [LayarUtama(), Materi(), About()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: 'Materi'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'About')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class LayarUtama extends StatelessWidget {
  const LayarUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('images/awal.jfif')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Percepatan"),
                style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    primary: Colors.blue,
                    padding: EdgeInsets.all(20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Percepatan();
                  }));
                },
              ),
              SizedBox(width: 30),
              ElevatedButton(
                child: Text("Gaya"),
                style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Gaya();
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
