import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:redwallet/widget/navbar.dart';

class SuccesAddCard extends StatelessWidget {
  const SuccesAddCard({Key? key}) : super(key: key);

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
                child: Column(
                  children: [
                    Container(
                      child: Lottie.asset("assets/lottie/addcard.json"),
                      height: 250,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Terima kasih atas kepercayaan anda pada Red-Wallet! Proses pengolahan kartu anda akan dilakukan dalam waktu 24 jam di hari kerja.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500
                      ),
                    ),
                  ],
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