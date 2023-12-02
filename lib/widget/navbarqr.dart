import 'package:flutter/material.dart';
import 'package:redwallet/Screens/show_qr.dart';
import 'package:redwallet/Screens/test.dart';


class NavbarQr extends StatefulWidget {
  const NavbarQr({Key? key}) : super(key: key);

  @override
  State<NavbarQr> createState() => _NavbarQrState();
}

class _NavbarQrState extends State<NavbarQr> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    TestPage(), 
    ShowQr(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 190,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        flexibleSpace: ClipPath(
          clipper: MyClipper1(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/homepage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 120),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(''),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 80, 5, 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Scan Barcode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Show Barcode',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
}
}
class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 8, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}