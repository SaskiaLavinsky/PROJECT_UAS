import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:redwallet/Screens/test.dart';



class CurrencyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isNotEmpty) {
      final num = int.parse(newValue.text.replaceAll(',', ''));
      final newString = NumberFormat("#,###").format(num);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(offset: newString.length),
      );
    }
    return newValue;
  }
}

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  TextEditingController recipientController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    recipientController.dispose();
    amountController.dispose();
    messageController.dispose();
    super.dispose();
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


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            SizedBox(height: 20),
            TextFormField(
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                CurrencyFormatter(),
              ],
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Amount',
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
                prefixText: 'Rp ',
                prefixStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )
              ),
            ),

              SizedBox(height: 40),

              TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  labelText: 'Message (Optional)',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0), 
                    borderSide: BorderSide.none, 
                  ),
                ),
              ),
              SizedBox(height: 20), 
                          
                          ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, 
                  onPrimary: Colors.white, 
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18, 
                  ),
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