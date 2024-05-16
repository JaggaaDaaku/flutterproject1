import 'package:flutter/material.dart';
import 'package:project1/data.dart';


class search extends StatefulWidget {
  const search({super.key, required this.value});
  final String value;

  
  
  @override
  State<search> createState() => searchState(value);
}


class searchState extends State<search> {
  String value;
  searchState(this.value);
  
  String product ='';
  int price=0;
  process(){
    Product p=Product();
    var (product, price) = p.searchProduct(value);
    this.product=product;
    this.price=price;
    
  }
  @override
  initState() {
    super.initState();
    process();
    if(product ==''&&price==0){
      
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(product),
          ),
          Container(
          child: Text(price.toString()),
        ),

        ],
      )
    );
  }
}