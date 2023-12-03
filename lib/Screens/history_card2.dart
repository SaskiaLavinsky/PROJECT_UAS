import 'package:flutter/material.dart';
import 'package:redwallet/data/biodata.dart';
import 'package:redwallet/widget/navbar.dart';

class HistoryCard2 extends StatelessWidget {
  const HistoryCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1.0), 
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 131, 0, 0),
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height:300, child: _head(context)),
            ),
            SliverToBoxAdapter(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('img/${dua()[index].image!}', 
                height: 40),
                ) ,
                title: Text(
                  dua()[index].name!,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),
                ),
                subtitle: Text(
                  dua()[index].time!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                ),
                trailing: Text(
                  dua()[index].fee!,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: dua()[index].buy! ? Colors.red : Colors.green,
                  ),
                ),
            );
          },
          childCount: dua().length,
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
                    color: Color.fromARGB(255, 131, 0, 0),
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
                          color: Color.fromRGBO(188, 8, 8, 1),
                          child: Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                      
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        );
  }
}