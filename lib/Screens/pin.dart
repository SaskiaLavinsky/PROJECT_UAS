import 'package:flutter/material.dart';
import 'package:redwallet/Screens/test.dart';


class PinEntryScreen extends StatefulWidget {
  @override
  _PinEntryScreenState createState() => _PinEntryScreenState();
}

class _PinEntryScreenState extends State<PinEntryScreen> {
  String pin = '';

  void pinChanged(String value) {
  setState(() {
    pin = value;
  });

  if (value.length == 4) {
    if (value == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TestPage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid PIN',
            style: TextStyle(
              fontWeight: FontWeight.w600
            ),),
            content: Text('The entered PIN is incorrect.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK',
                style: TextStyle(
                  color: Colors.red
                ),),
              ),
            ],
          );
        },
      );
    }
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 190,
  iconTheme: IconThemeData(color: Colors.white),
  backgroundColor: Color.fromARGB(255, 255, 255, 255),
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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  4,
                  (index) => Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: index < pin.length
                        ? Icon(Icons.circle, size: 15, color: Colors.black)
                        : null,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 4,
                onChanged: pinChanged,
                decoration: InputDecoration(
                  hintText: 'Enter your PIN',
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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

class MyClipper extends CustomClipper<Path> {
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