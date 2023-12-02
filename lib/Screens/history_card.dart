import 'package:flutter/material.dart';
import 'package:redwallet/Screens/top_up.dart';
import 'package:redwallet/Screens/transfer_page.dart';
import 'package:redwallet/data/biodata.dart';
import 'package:redwallet/widget/my_button.dart';
import 'package:redwallet/widget/navbar.dart';
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
              child: SizedBox(height:340, child: _head(context)),
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
                            MaterialPageRoute(builder: (context) => TopUp()),
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
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 237, 4, 4),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 340,
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MyBottomNavigationBar()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          color: Color.fromARGB(255, 145, 17, 0),
                          child: Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello', 
                              style:TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.white,
                              )
                            ),
                            Text(
                              'Lets track your expenses this month', 
                              style:TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 140,
              left: 37,
              child: Container(
                height: 170,
                width: 320,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(47, 125, 121, 0.3),
                      offset: Offset(0, 6),
                      blurRadius: 12,
                      spreadRadius: 6,
                    )
                  ],
                  color: Color.fromARGB(255, 145, 17, 0),
                  borderRadius: BorderRadius.circular(15),    
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Balance',
                            style:TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            )
                          ),
                    
                        
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            'Rp 6.290.000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),)
                        ],
                      ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Color.fromARGB(255, 173, 1, 1),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 216, 216, 216),
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Color.fromARGB(255, 173, 1, 1),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Expenses',
                                  style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 216, 216, 216),
                                  ),
                                ),
                              ],
                            )
                            ]
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                            'Rp 12.000.000',
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white,
                            )
                          ),
                          Text(
                            'Rp 5.710.000',
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white,
                            )
                          ),
                          ]),)
                  ],
                ),
              ),
            )
          ],
        );
  }
}