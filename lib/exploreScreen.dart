import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/data.dart';

class exploreScreen extends StatefulWidget {
  const exploreScreen({super.key});

  @override
  State<exploreScreen> createState() => _exploreScreenState();
}

class _exploreScreenState extends State<exploreScreen> {
  
  Product p=Product();
  final random=Random();
  add2cart(int i){
    if(!cart['Product'].contains(p.getProducts()[i])){
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.sizeOf(context).height*0.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red,Colors.orange,Colors.yellow])
      ),
      child: SingleChildScrollView(
        child:Container(
          child: SingleChildScrollView(
            child:  
        Column(
          children: [
            for(int i=2;i<p.getProducts().length;i=i+3)
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Card(
                        color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context, 
                              builder: (context){
                                return AlertDialog(
                                  shadowColor: Colors.black,
                                  content: Container(
                                    height: 400,
                                    width: 300,
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child:
                                    Column(
                                      
                                        children: [
                                          Image.asset(
                                            'assets/icon/gulabjamun.jpeg',
                                            height: 300,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(p.getProducts()[i-2],style: TextStyle(fontSize: 40),),
                                        ],
                                      ),
                                  ),
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            add2cart(i-2);
                                          },
                                          icon: Icon(CupertinoIcons.add),
                                        )
                                      ],

                                );
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon/gulabjamun.jpeg',
                                  height:
                                      MediaQuery.of(context).size.width / 3 -
                                          40,
                                  fit: BoxFit.fill,
                                ),
                                Text(p.getProducts()[i -2]),
                              ],
                            ),
                          ),
                        ),
                      color: Colors.blue,
                    ),
                    
                  ),
                  Container( 
                    color: Colors.transparent,
                    padding: EdgeInsets.all(3),
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Card(
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context, 
                              builder: (context){
                                return AlertDialog(
                                  shadowColor: Colors.black,
                                  content: Container(
                                    height: 400,
                                    width: 300,
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child:
                                    Column(
                                      
                                        children: [
                                          Image.asset(
                                            'assets/icon/gulabjamun.jpeg',
                                            height: 300,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(p.getProducts()[i-1],style: TextStyle(fontSize: 40),),
                                        ],
                                      ),
                                  ),
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            add2cart(i-1);
                                          },
                                          icon: Icon(CupertinoIcons.add),
                                        )
                                      ],

                                );
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon/gulabjamun.jpeg',
                                  height:
                                      MediaQuery.of(context).size.width / 3 -
                                          40,
                                  fit: BoxFit.fill,
                                ),
                                Text(p.getProducts()[i -1]),
                              ],
                            ),
                          ),
                        ),
                      color: Colors.blue,
                    ),
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Card(
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context, 
                              builder: (context){
                                return AlertDialog(
                                  shadowColor: Colors.black,
                                  content: Container(
                                    height: 400,
                                    width: 300,
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child:
                                    Column(
                                      
                                        children: [
                                          Image.asset(
                                            'assets/icon/gulabjamun.jpeg',
                                            height: 300,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(p.getProducts()[i],style: TextStyle(fontSize: 40),),
                                        ],
                                      ),
                                  ),
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            add2cart(i);
                                          },
                                          icon: Icon(CupertinoIcons.add),
                                        )
                                      ],

                                );
                              });
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/icon/gulabjamun.jpeg',
                                  height:
                                      MediaQuery.of(context).size.width / 3 -
                                          40,
                                  fit: BoxFit.fill,
                                ),
                                Text(p.getProducts()[i ]),
                              ],
                            ),
                          ),
                        ),
                      color: Colors.blue,
                    ),
                    
                  )
                ],
              ),
            )
          ],
        ),
          )
        )
      ),
    );
  }
}