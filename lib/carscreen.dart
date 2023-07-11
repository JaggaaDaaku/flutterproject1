import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Contantpage.dart';
import 'package:project1/sweet.dart';
import 'package:project1/switch.dart';


class catscreen extends StatefulWidget {
  const catscreen({super.key, required this.d, required this.productdata});

  final int d;
  final  productdata;


  @override
  State<catscreen> createState() => _catscreenState(d,productdata);
}

class _catscreenState extends State<catscreen> {
  final int d;
  final productdata ;
  final Switch col=new Switch();
  _catscreenState(this.d,this.productdata);
  
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
  void add2cart(int j) {
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
    }
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.of(context).pop(contantPage());
        }),
        title: Text('${catg[d]}'),
        actions: [
          Image.asset(
            '${logo[d]}',
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
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
                            add2cart(jj);
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
    
  }
}
class Switch{
  
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