import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:redwallet/Screens/home_page.dart';
import 'package:redwallet/Screens/signin.dart';
import 'package:redwallet/Screens/test.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 1;
  final List<Widget> _screens = [
    TestPage(),
    HomePage(),
    TestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        color: Colors.red.shade700,
        animationDuration: Duration(milliseconds: 500),
        index: _currentIndex,
        items: [
          Icon(
            Icons.face_retouching_natural,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            _showLogoutConfirmationDialog(context);
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }

  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Leaving Red-Wallet?',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.red,
          ),),
          content: Text('Make sure that you have completed all your activities! Thank you for using Red-Wallet.',
          style: TextStyle(
            fontSize: 16,
          ),),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel',
              style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,

            color: Colors.red
          ),),
              onPressed: () {
                setState(() {
                  _currentIndex = 1; // Ini indeks untuk Home
                });
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
              },
            ),

            TextButton(
              child: Text('OK',
              style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,

            color: Colors.red
          ),),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
                Navigator.pushReplacement( // Gunakan pushReplacement agar tidak ada history ke halaman sebelumnya
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },

            ),
          ],
        );
      },
    );
  }
}
