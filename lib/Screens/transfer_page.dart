import 'package:flutter/material.dart';
import 'package:redwallet/Screens/send_money.dart';
import 'package:redwallet/Screens/send_money2.dart';
import 'package:redwallet/data/listdata.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final List<String> names = ['Saskia', 'Aulia', 'Shannon', 'Marvin', 'Carisha', 'Nashwa'];

  static List<ListData> main_List_Data = [
    ListData("Saskia Lavinsky", "Bank Red-Wallet", 5352201760),
    ListData("Aulia Dwi Yulianti", "Bank Red-Wallet", 5352201780),
    ListData("Shannon Andrea", "Bank Red-Wallet", 5352202040),
    ListData("Marvin Gultom", "Bank Red-Wallet", 5352201980),
    ListData("Carisha Puspa G.", "Bank Red-Wallet", 5352201850),
    ListData("Nashwa Sawitri D.", "Bank Red-Wallet", 5352202200),
    ListData("Taylor Swift", "Bank Red-Wallet", 5352201766),
    ListData("Kim Jennie", "Bank Red-Wallet", 5352201767),
  ];

  List<ListData> display_list = List.from(main_List_Data);

  void UpdateList(String Value){
    setState(() {
      display_list = main_List_Data
      .where((element) => element.name!.toLowerCase().contains(Value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 25,
                  color: Colors.white,
                ),
                const SizedBox(width: 35),
                Text(
                  'IDR Transfer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Favorite",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < names.length; i++)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SendMoney(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 29,
                                      backgroundImage: AssetImage('img/people.jpg'),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    names[i],
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        "Transfer List ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFC70000),
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 82, 79, 79),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Who to transfer today?",
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: Color.fromARGB(255, 185, 39, 39),
                          ),
                          onChanged: (Value) =>UpdateList(Value),
                        ),
                      ),
                    ],
                    
                  ),
                 
                 Expanded(
                  child: display_list.isEmpty
                    ? Center(
                        child: Text(
                          "User Not Found.",
                          style: TextStyle(color: Colors.grey, fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                      )
                    : ListView.builder(
                      itemCount: display_list.length,
                      itemExtent:80,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SendMoney(),
                              ),
                            );
                          },
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('img/people.jpg'),
                          ),
                          title: Text(display_list[index].name ?? ''),
                          subtitle: Text(display_list[index].bank ?? ''),
                          trailing: Text(display_list[index].norek.toString()),
                        );
                      },
                    ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SendMoney2  (),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(6), 
                          primary: Colors.red.shade700, 
                          shape: RoundedRectangleBorder( 
                            borderRadius: BorderRadius.circular(30), 
                          ),
                          elevation: 0, 
                        ),
                        child: Text(
                          'Transfer to New Recipient',
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 18, 
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}