import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Rest.dart';
import 'package:project1/Setting/account.dart';
import 'package:project1/explore.dart';
import 'package:project1/pay.dart';
import 'data.dart';

class contantPage extends StatefulWidget {
  const contantPage({super.key});

  @override
  State<contantPage> createState() => _contantPageState();
}

class _contantPageState extends State<contantPage> {
  int page=0;
  int out=0;
  int totleMoney=0;

 
  
  @override
  Widget build(BuildContext context) {
    int grandTotle = 0;
    Widget bodypart() {
      return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.85,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5)),
              child: Image.asset('assets/icon/sweet3.png'),
            ),
            Rest()
          ],
        ),
      );
    }
    Widget cartRefreshQuantity(int j){
      return Text('${cart['Quantity']?[j]}');
    }
    
    Widget data(int i){
      int totle=(cart['Price']?[i] )!* (cart['Quantity']?[i])!;
      grandTotle+=totle;
      return Container(
        child: Row(
          children: [
            Text('₹${cart['Price']?[i]} X ${cart['Quantity']?[i]} = ${totle}',style:TextStyle(fontSize: 17),)
          ],
        ),
      );
    }
    Widget checkout(){
      return Container(
        child: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.34,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 204, 149),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 222, 194),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: const Color.fromARGB(255, 131, 90, 90),
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
              child: SingleChildScrollView(
                child: Column(children: [
                for (int j = 0; j < cart['Product']!.length; j++) 
                  Container(
                    child: Row(
                      children: [
                        Text('${cart['Product']?[j]}'),
                        Spacer(),
                        Text('₹${cart['Price']?[j]}'),
                        SizedBox(),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  int q=cart['Quantity']?[j] as int;
                                  if(q==0)
                                    return ;
                                  q--;
                                  cart['Quantity']?[j]=q;
                                  setState(() {
                                    cartRefreshQuantity(j);
                                  });
                                },
                                icon: Icon(Icons.remove_circle),
                              ),
                              cartRefreshQuantity(j),
                              IconButton(
                                onPressed: () {
                                  int q = cart['Quantity']?[j] as int;
                                  q++;
                                  cart['Quantity']?[j] = q;
                                  setState(() {
                                    cartRefreshQuantity(j);
                                  });
                                },
                                icon: Icon(Icons.add_circle),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ]),
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.25,vertical: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 249, 185, 175),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 154, 128, 123),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), ]
              ),
              height: MediaQuery.of(context).size.height*0.28,
              child: SingleChildScrollView(child: Column(
                children: [
                  for (int j = 0; j < cart['Product']!.length; j++)
                  data(j),
                ],
              ),)
            ),
            Container(child: Text('₹$grandTotle',style: TextStyle(fontSize: 25),),),
            Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: 120,
              child: FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        out = 2;
                        totleMoney=grandTotle;
                      });
                    },
                    //icon: Icon(Icons.shop),
                    label: Text('GO TO PAYMENT'),
                  ),
                )
          ],
        ),
      ),
      );
    }
    Widget cartout(){
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 247, 227, 215),
                boxShadow: [BoxShadow(blurRadius: 05)]),
              child: SingleChildScrollView(
                child: Column(children: [
                for (int j = 0; j < cart['Product']!.length; j++) 
                  Container(
                    child: Row(
                      children: [
                        Text('${cart['Product']?[j]}'),
                        Spacer(),
                        Text('₹${cart['Price']?[j]}'),
                        SizedBox(),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  int q=cart['Quantity']?[j] as int;
                                  if (q == 0) return;
                                  q--;
                                  cart['Quantity']?[j]=q;
                                  setState(() {
                                    cartRefreshQuantity(j);
                                  });
                                },
                                icon: Icon(Icons.remove_circle),
                              ),
                              cartRefreshQuantity(j),
                              IconButton(
                                onPressed: () {
                                  int q = cart['Quantity']?[j] as int;
                                  q++;
                                  cart['Quantity']?[j] = q;
                                  setState(() {
                                    cartRefreshQuantity(j);
                                  });
                                },
                                icon: Icon(Icons.add_circle),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ]),
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    out=1;
                  });
                }, 
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children:[Text("Checkout", style: TextStyle(fontSize: 16))])),
                )
                )
          ],
        ),
      );
    }
    Widget cartwd(int o) {
      if (cart['Product']!.isEmpty) 
        return Container(
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.symmetric(vertical:50,horizontal: 100),
          child :Text("Your Cart is Empty"),
        );
      switch(o){
        case 0: return cartout();
        case 1: return checkout();
        case 2: return payment( totle: totleMoney);
        default : return cartout();
      }
      
    }

    


    //var bodyy = homePg();
    Widget bod() {
      switch (page) {
        case 0:
          return bodypart();
        case 1:
          return explore();
        case 2:
          return cartwd(out);
        case 3:
          return account();
        default:
          return bodypart();
      }
    }

    
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height*0.95,
          child :bod()),
        bottomNavigationBar: SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              child: BottomNavigationBar(
                selectedFontSize: MediaQuery.of(context).size.height * 0.01,
                unselectedFontSize: 2.5,
                selectedItemColor: const Color.fromARGB(255, 1, 1, 1),
                items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                  
                ),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.search), label: 'Explore',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                ),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: 'Cart',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'Account',
                  backgroundColor: Color.fromARGB(2, 71, 20, 20),
                )
              ],
              currentIndex: page,
                onTap: (int ind) {
                  setState(() {
                    page = ind;
                    
                  });
                },
              ),
            )
      ));
  }
}