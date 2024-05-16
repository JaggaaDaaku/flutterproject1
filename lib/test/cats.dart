import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Contantpage.dart';
import 'package:project1/data.dart';

class cats extends StatefulWidget {
  const cats({super.key,required this.data});
  final data;


  @override
  State<cats> createState() => _catsState(data);
}

class _catsState extends State<cats> {
  _catsState(this.data);
  final data;
  
  
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
  final Switch col = new Switch();
  void add2cart(int j) {/*
    print(j);
    if (!cart['Product']!.contains(productdata['Product']?[j])) {
      cart['Product']!.add(productdata['Product']?[j]);
      //notifyListeners();
      //notifyCartChange();
      //return true;
      cart['Price']!.add(productdata['Price']?[j]);
      cart['Quantity']!.add(1);
    } else {
      print("This item is already in the cart");
    }*/
  }

  Widget body() {
    
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: AlignmentDirectional.centerStart,
              decoration: BoxDecoration(color: col.colortray(0)
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(data['Product'][0])
                  
                  
                  /*
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
                            add2cart(jj);
                          },
                          icon: Icon(CupertinoIcons.add),
                        )
                      ],
                    ))
                */]
                ),
              )),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return body();
  }
}
class Switch {
  Color colortray(int i) {
    switch (i) {
      case 1:
        return Color.fromARGB(255, 250, 216, 216);
      case 2:
        return Color.fromARGB(255, 147, 224, 255);
      case 3:
        return Color.fromARGB(255, 162, 171, 251);
      case 4:
        return Color.fromARGB(255, 253, 248, 157);
      case 5:
        return Color.fromARGB(255, 223, 250, 148);
      case 6:
        return Color.fromARGB(255, 159, 249, 221);
      case 7:
        return Color.fromARGB(255, 255, 161, 225);
    }
    return Color.fromARGB(255, 250, 216, 216);
  }
}
