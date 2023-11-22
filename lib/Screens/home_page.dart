import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        flexibleSpace: ClipPath(
          clipper: MyClipper(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/homepage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: const Text(''),
      ),
      

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        color: Colors.red.shade700,
        animationDuration: Duration(milliseconds: 500),
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
        
      ),
    );

    
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
