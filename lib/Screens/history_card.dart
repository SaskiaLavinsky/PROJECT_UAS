import 'package:flutter/material.dart';
import 'package:redwallet/Screens/test.dart';
import 'package:redwallet/Screens/transfer_page.dart';
import 'package:redwallet/data/biodata.dart';
import 'package:redwallet/widget/my_button.dart';
import 'package:redwallet/widget/navbarqr.dart';


class HistoryCards extends StatelessWidget {
  const HistoryCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1.0), 
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 4, 4),
          elevation: 0,
        ),
      ),
      body: SafeArea(
        
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height:30, child: _head(context)),
            ),
            SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        iconImagePath: 'img/send.png', 
                        buttonText: 'Send',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TransferPage()),
                          );
                        },
                      ),
                      MyButton(
                        iconImagePath: 'img/qris.png', 
                        buttonText: 'Qris',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NavbarQr()),
                          );
                        },
                      ),
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('img/${satu()[index].image!}', 
                height: 40),
                ) ,
                title: Text(
                  satu()[index].name!,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),
                ),
                subtitle: Text(
                  satu()[index].time!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                ),
                trailing: Text(
                  satu()[index].fee!,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: satu()[index].buy! ? Colors.red : Colors.green,
                  ),
                ),
            );
          },
          childCount: satu().length,
        ))
        ],
        )
        ),
    );
  }
  Widget _head(BuildContext context){
    return Stack(
          children: [
            
           
          ],
        );
  }
}