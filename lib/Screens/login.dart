import 'package:flutter/material.dart';
import 'package:redwallet/Screens/signin.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
 _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, -0.2),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman LoginPage.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()), // Ganti LoginPage dengan halaman tujuan yang ingin Anda buka
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 131, 9, 0),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
