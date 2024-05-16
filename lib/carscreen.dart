import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:project1/Contantpage.dart';
import 'package:project1/data.dart';


class catscreen extends StatefulWidget {
  const catscreen({
    super.key, 
    required this.d, 
    required this.productdata,
    required this.cp
    });

  
  final int cp;
  final int d;
  final  productdata;


  @override
  State<catscreen> createState() => _catscreenState(d,productdata,cp);
}

class _catscreenState extends State<catscreen> {
  int d;
  final productdata;
  int cp;
  data(int d) {
    print(cp);
    var productdata=this.productdata;
    switch (d) {
      case 1:
        productdata = sweet;
        break;
      case 2:
        productdata = spicy;
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
    return catscreen(
      d: d,
      productdata: productdata,
      cp: cp,
    );
  }
  
  final Switch col=new Switch();
  _catscreenState(this.d,this.productdata,this.cp);
  
  var catg = {
    0: 'Sweet Dessert',
    1: 'Spicy Dessert',
    2: 'Snacks',
    3: 'Cake',
    4: 'Cold Drink',
    5: 'Ice Cream',
    6: 'Row Form'
  };
  var logo = {
    0: 'assets/icon/sweet.png',
    1: 'assets/icon/spicy.png',
    2: 'assets/icon/snack.png',
    3: 'assets/icon/cake.png',
    4: 'assets/icon/drink.png',
    5: 'assets/icon/ice.png',
    6: 'assets/icon/row.png',
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
  
  Widget body(int i){
    print("$cp $i $d");
    setState(() {
      //d=cp;
    });
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
  late LiquidController lc;
  late UpdateType ut;

  @override
  void initState() {
    lc=LiquidController();
    cp=lc.currentPage;
    super.initState();
  }
  pcb(int i){
    setState(() {
      //d=i;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      liquidController: lc,
      onPageChangeCallback: pcb,
      initialPage: cp,
      waveType: WaveType.liquidReveal,
      pages: [for(int i=0;i<=2;i++) body(i)]
      );
    //body(d);
    /*Scaffold(
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
    );*/
    
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