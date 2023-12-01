import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double Balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color;
  final VoidCallback onTap;

  const MyCard({
    Key? key,
    required this.Balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.Color,
    required this.onTap,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color,
                borderRadius: BorderRadius.circular(16),
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  SizedBox(height: 10),
                
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ), 
                ),
                
                SizedBox(height: 10),
                
                Text(
                  '\Rp ' + Balance.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),   
                ),
                
                SizedBox(height: 30),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[                  
                  Text(
                    cardNumber.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    ),   
                  ),
                  
                  
                  Text(
                    expiryMonth.toString() + '/' + expiryYear.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      ),   
                    )
                ])
              ]),
            )
            ));
  }}