import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:project1/carscreen.dart';
import 'package:project1/sweet.dart';

class category_screen extends StatefulWidget {
  const category_screen({super.key,required this.i});
  final int i;

  @override
  State<category_screen> createState() => _category_screenState(i);
}

class _category_screenState extends State<category_screen> {
  
  int i;
  _category_screenState(this.i);
  
  
  var productdata = sweet;
  data(int d) {
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
    return catscreen(d: d,productdata: productdata,);
  }
/*
void initstate(){
   print("init state called");
  }*/
  
  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          initialPage: i-1,
          waveType: WaveType.liquidReveal,
          pages: [
            for(int ii=1;ii<=7;ii++)
             data(ii)
          ] 
        ),
      ),
    );
  }
}
