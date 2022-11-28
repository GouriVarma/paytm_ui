// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 192, 43, 135),
          title:
          Center(
           
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pay',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'tm',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://www.analyticssteps.com/backend/media/thumbnail/464616/117235_1603316535_paytm%20(1).jpg',
                  width: 370,
                  height: 200,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 370,
                  height: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'UPI Money Transfer',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 14, 63, 104)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  SecondPage())));
                                    },
                                    icon: Icon(Icons.money)),
                                Text('Money')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.account_balance)),
                                Text('Balance')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.account_box)),
                                Text('Account')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.wallet)),
                                Text('Wallet')
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.euro_symbol)),
                                Text('Debts')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.mobile_friendly)),
                                Text('Mobile')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.credit_card)),
                                Text('CreditCard')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.airplane_ticket)),
                                Text('Ticket')
                              ],
                            )
                          ],
                        )
                      ]),
                ),
                Image.network(
                  "https://www.netmeds.com/images/cms/offers/1664373093_M_Home_Bannerpaytm.jpg",
                  height: 226,
                )
              ],
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: 
        Text(
          'Money',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: 
      
      SafeArea(
        
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
           Center(
             child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(255, 222, 235, 243),),
              width: MediaQuery.of(context).size.width*0.9,
              height: 90,
              child:
               Column(
                children: [
                  SizedBox(height: 10),
                  Text('Account Owner: gandalf',style:TextStyle(fontSize: 20),),
                Text('UPI Id: ugheirg844@oksbi',style:TextStyle(fontSize: 20),),
                Text('Account Bal:0',style:TextStyle(fontSize: 20),
                )
                ],
              ),
              
          ),
           ),SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>HomePage(),
          ));
        }, child:Text('Go to home page') ,)
        ],
        
      )),
    );
  }
}
