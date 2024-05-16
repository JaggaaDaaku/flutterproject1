import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:project1/data.dart';
import 'package:project1/test/cats.dart';

class cat1 extends StatefulWidget {
  const cat1({super.key,required this.page});
  final int page;

  @override
  State<cat1> createState() => _cat1State(page);
}

class _cat1State extends State<cat1> {
  int page;
  _cat1State(this.page);
  

  var title = {
    0: 'Sweet Dessert',
    1: 'Spicy Dessert',
    2: 'Snacks',
    3: 'Cake',
    4: 'Cold Drink',
    5: 'Ice Cream',
    6: 'Row Form'
  };
  var logo = <int,String>{
    0: 'assets/icon/sweet.png',
    1: 'assets/icon/spicy.png',
    2: 'assets/icon/snack.png',
    3: 'assets/icon/cake.png',
    4: 'assets/icon/drink.png',
    5: 'assets/icon/ice.png',
    6: 'assets/icon/row.png',
  };

  void add2cart(int j) {
    if (!cart['Product']!.contains(productdata['Product']?[j])) {
      cart['Product']!.add(productdata['Product']?[j]);
      cart['Price']!.add(productdata['Price']?[j]);
      cart['Quantity']!.add(1);
    } else {
      print("This item is already in the cart");
    }
  }
  ColorSwitch col=ColorSwitch();
  var productdata = sweet;
  var cartdata=sweet;
  data(int d) {
    switch (d) {
      case 0:
        productdata = sweet;
        break;
      case 1:
        productdata = spicy;
        break;
      case 2:
        productdata = snack;
        break;
      case 3:
        productdata = cake;
        break;
      case 4:
        productdata = drink;
        break;
      case 5:
        productdata = ice;
        break;
      case 6:
        productdata = row;
        break;
    }
    void showT(String msg)=> Fluttertoast.showToast(msg: msg);
    
    return //Container(child: Text(productdata['Product'][0]),);
    Scaffold(
      appBar: AppBar(
        title: Text("${title[page]}"),
        actions: [Image.asset("${logo[page]}")],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: AlignmentDirectional.centerStart,
              decoration: BoxDecoration(color: col.colortray(d)),
              child: SingleChildScrollView(
                child: Column(children: [
                  for (int jj = 0; jj < productdata['Product']!.length; jj++)
                    Container(
                        child: Row(
                      children: [
                        Text(productdata['Product']?[jj] as String),
                        Spacer(),
                        Text('₹ ${productdata['Price']?[jj]}'),
                        SizedBox(),
                        IconButton(
                          onPressed: () {
                            if (!cart['Product']!
                                .contains(cartdata['Product']?[jj])) {
                              cart['Product']!.add(cartdata['Product']?[jj]);
                              cart['Price']!.add(cartdata['Price']?[jj]);
                              cart['Quantity']!.add(1);
                              Fluttertoast.showToast(msg: "${cartdata['Product']?[jj]} is added in cart",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.grey);
                            } else {
                              print("This item is already in the cart");
                              Fluttertoast.showToast(msg:"This item is already in the cart", toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,textColor: Colors.white,backgroundColor: Colors.grey);
                            }
                          },
                          icon: Icon(CupertinoIcons.add),
                        )
                      ],
                    ))
                ]),
              )),
        ),
      ),
    );
    //cats(data:productdata);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          initialPage: page,
          enableLoop: false,
          onPageChangeCallback: (activePageIndex) {
            setState(() {
              page = activePageIndex;
              print(page);
              switch(activePageIndex){
                 case 0:
                    cartdata = sweet;
                    break;
                  case 1:
                    cartdata = spicy;
                    break;
                  case 2:
                    cartdata = snack;
                    break;
                  case 3:
                    cartdata = cake;
                    break;
                  case 4:
                    cartdata = drink;
                    break;
                  case 5:
                    cartdata = ice;
                    break;
                  case 6:
                    cartdata = row;
                    break;
              }
            });
          },
          pages: [
            for(int i=0;i<7;i++)
              data(i),
          ]
          ),
      ),
    );
  }
}
class ColorSwitch {
  Color colortray(int i) {
    switch (i) {
      case 0:
        return Color.fromARGB(255, 250, 216, 216);
      case 1:
        return Color.fromARGB(255, 147, 224, 255);
      case 2:
        return Color.fromARGB(255, 162, 171, 251);
      case 3:
        return Color.fromARGB(255, 253, 248, 157);
      case 4:
        return Color.fromARGB(255, 223, 250, 148);
      case 5:
        return Color.fromARGB(255, 159, 249, 221);
      case 6:
        return Color.fromARGB(255, 255, 161, 225);
    }
    return Color.fromARGB(255, 250, 216, 216);
  }
}
