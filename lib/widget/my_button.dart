import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final VoidCallback onTap; // Tambahkan callback onTap

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.onTap, // Tambahkan pada constructor
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Gunakan onTap yang diterima dari constructor
      child: Column(
        //item
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 173, 5, 5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(iconImagePath),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //teks
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
            ),
          ),
        ],
      ),
    );
  }
}