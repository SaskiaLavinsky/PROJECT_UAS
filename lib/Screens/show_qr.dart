import 'package:flutter/material.dart';

class ShowQr extends StatelessWidget {
  const ShowQr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Only for payment in Indonesia. For security, scan only at cashier and do not share with anyone.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade500,
                  height: 1.2
                ),
              ),
            ),
           
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset(
                'img/barcode.png', 
                width: 300, 
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}