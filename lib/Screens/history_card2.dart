import 'package:flutter/material.dart';
import 'package:redwallet/data/biodata.dart';


class HistoryCard2 extends StatelessWidget {
  const HistoryCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
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
        
            
          ],
        );
  }
}