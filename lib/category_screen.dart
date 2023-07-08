import 'package:flutter/material.dart';
import 'package:project1/sweet.dart';
import 'package:project1/cart.dart';

class category_screen extends StatefulWidget {
  const category_screen({super.key,required this.i});
  final int i;

  @override
  State<category_screen> createState() => _category_screenState(i);
}

class _category_screenState extends State<category_screen> {
  var productdata=sweet;
  int i;
  _category_screenState(this.i);
  var catg = {
    1: 'Sweet Dessert',
    2: 'Spicy Dessert',
    3: 'Snacks',
    4: 'Cake',
    5: 'Cold Drink',
    6: 'Ice Cream',
    7: 'Row Form'
  };
  var logo = {
    1: 'assets/icon/sweet.png',
    2: 'assets/icon/spicy.png',
    3: 'assets/icon/snack.png',
    4: 'assets/icon/cake.png',
    5: 'assets/icon/drink.png',
    6: 'assets/icon/ice.png',
    7: 'assets/icon/row.png',
  };
  
  

//void initstate(){
  // print("init state called");
  //}
  void add2cart(int j) {
    if (!cart['Product']!.contains(productdata['Product']?[j])) {
      cart['Product']!.add(productdata['Product']?[j]);
      //notifyListeners();
      //notifyCartChange();
      //return true;
      cart['Price']!.add(productdata['Price']?[j]);
      cart['Quantity']!.add(1);
    } else {
      print("This item is already in the cart");
    }
  }
  data(int d){
    
    
    switch(d){
      case 1 : productdata=sweet; break;
      case 2:productdata = spicy;
        break;
      case 3:
        productdata = snack;
        break;
      case 4:
        productdata = cake;
        break;
      case 5:
        productdata = drink;
        break;
      case 6:
        productdata = ice;
        break;
      case 7:
        productdata = row;
        break;
    }
    return Container(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 80,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(color: Color(0xffF9EBEA)),
          child: SingleChildScrollView(
            child: Column(children: [
            for (int j=0;j<productdata['Product']!.length;j++)
              Container(
                  child: Row(
                children: [
                  Text(productdata['Product']?[j] as String),
                  Spacer(),
                  Text('₹ ${productdata['Price']?[j]}'),
                  SizedBox(),
                  IconButton(
                    onPressed: () {
                      add2cart(j);
                    },
                    icon: Icon(Icons.add_box),
                  )
                ],
              ))
          ]),
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(catg[i]!),
          actions: [
            Image.asset(
              logo[i]!,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: data(i),
      ),
    );
  }
}