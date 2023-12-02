import 'package:flutter/material.dart';
import 'package:redwallet/Screens/pick_card.dart';
import 'package:redwallet/Screens/pick_card2.dart';
import 'package:redwallet/Screens/test.dart';

import 'package:redwallet/utils/cards.dart';
import 'package:redwallet/widget/my_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  //pagecontroller
  final _controller = PageController();
    
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
      body: SafeArea(
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children:  [
                  Text(
                    'Hai',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Sam!',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //send
                MyButton(
                  iconImagePath: 'img/send.png', 
                  buttonText: 'Send',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PickCard()),
                    );
                  },
                ),

                //Qris
                MyButton(
                  iconImagePath: 'img/qris.png', 
                  buttonText: 'Qris',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PickCard2()),
                    );
                  },
                ),

                //top up
                MyButton(
                  iconImagePath: 'img/topup.png', 
                  buttonText: 'Top-up',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage()),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TestPage()),
                      );
                    },
                  ),
                ],
              ),
            ),


            SizedBox(height: 20),
            
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                MyCard(
                  Balance: 6290000,
                  cardNumber: 1182121520,
                  expiryMonth:10,
                  expiryYear:25,
                  Color: Color.fromARGB(255, 145, 17, 0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage()),
                    );
                  },
                ),
                
                MyCard(
                  Balance: 22680000,
                  cardNumber: 1182215350,
                  expiryMonth:12,
                  expiryYear:23,
                  Color: Color.fromRGBO(188, 8, 8, 1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage()),
                    );
                  },
                  ),
                  ]
                  ),),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: WormEffect( 
                          strokeWidth: 3, 
                          radius: 6, 
                          dotHeight: 8, 
                          dotWidth: 8, 
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
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