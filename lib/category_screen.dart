import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:project1/carscreen.dart';
import 'package:project1/data.dart';

class category_screen extends StatefulWidget {
  const category_screen({super.key,required this.i});
  final int i;

  @override
  State<category_screen> createState() => _category_screenState(i);
}

class _category_screenState extends State<category_screen> {
  
  int i;
  _category_screenState(this.i);
  int lc = 0;
  
  var productdata = sweet;
  data(int d,int lc) {
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
    print(lc);
    return catscreen(
      d: d,
      productdata: productdata,
      cp:lc);
  }
/*
void initstate(){
   print("init state called");
  }*/
  
  
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(lc);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          onPageChangeCallback: (activePageIndex) {
            print(activePageIndex);
            setState(() {
              lc = activePageIndex;  
              print(lc);
            });
            
          },
          initialPage: i-1,
          waveType: WaveType.liquidReveal,
          pages: [
            for(int ii=1;ii<=7;ii++)
             data(ii,lc)
          ] 
        ),
      ),
    );
  }
}
