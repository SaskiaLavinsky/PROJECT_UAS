import 'package:flutter/material.dart';
import 'package:redwallet/utils/cards.dart';
import 'package:redwallet/Screens/test.dart';
import 'package:redwallet/widget/navbarqr.dart';


class PickCard2 extends StatefulWidget {
  const PickCard2({Key? key}) : super(key: key);

  @override
  State<PickCard2> createState() => _PickCard2State();
}

class _PickCard2State extends State<PickCard2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Choose Your Card!',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  height: 19,
                  fontSize: 23
                ),
                ),
              background: Image.asset(
                'img/homepage.png',
                fit: BoxFit.cover,
                ),
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          SliverList(
  delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      if (index == 0) {
        return Padding(
          padding: const EdgeInsets.only(top: 60.0), 
          child: MyCard(
            Balance: 6290000,
            cardNumber: 1182121520,
            expiryMonth: 10,
            expiryYear: 25,
            Color: Color.fromARGB(255, 145, 17, 0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavbarQr()),
              );
            },
          ),
        );
      } else if (index == 1) {
        return Padding(
          padding: const EdgeInsets.only(top: 50.0), 
          child: MyCard(
            Balance: 22680000,
            cardNumber: 1182215350,
            expiryMonth: 12,
            expiryYear: 23,
            Color: Color.fromRGBO(188, 8, 8, 1),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavbarQr()),
              );
            },
          ),
        );
      } else if (index >= 2 && index <= 4) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0), 
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestPage()),
              );
            },
            child: Icon(Icons.add), 
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(bottom: 50.0), 
          child: ListTile(
            title: Text('Item ${index + 1}'),
          ),
        );
      }
    },
    childCount: 5, 
  ),
)

      ]
      )  );
  }}