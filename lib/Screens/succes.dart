import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:redwallet/widget/navbar.dart';

class Succes extends StatelessWidget {
  const Succes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Lottie.asset("assets/lottie/succes.json"),
                  height: 250,
                  
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyBottomNavigationBar()),
                    );
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}