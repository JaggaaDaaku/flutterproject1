import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/category_screen.dart';

class Rest extends StatefulWidget {
  const Rest({super.key});

  @override
  State<Rest> createState() => _RestState();
}

class _RestState extends State<Rest> {
  var catg={1:'Sweet Dessert',2:'Spicy Dessert',3:'Snacks',4:'Cake',5:'Cold Drink',6:'Ice Cream',7:'Row Form'};
  var logo={
    1:'assets/icon/sweet.png',
    2:'assets/icon/spicy.png',
    3:'assets/icon/snack.png',
    4:'assets/icon/cake.png',
    5:'assets/icon/drink.png',
    6:'assets/icon/ice.png',
    7:'assets/icon/row.png',
  };
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(5)),
      child: SingleChildScrollView(
        child: Column(
        children:[
          for(int i=1;i<=catg.length;i++)
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>category_screen(i: i,)));
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 209, 142),
              borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: MediaQuery.of(context).size.height,
                    child: Center(child: Text(catg[i]!,style: TextStyle(fontSize: 30),),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(logo[i]!,),
                    //Image.asset(teamlogo[i],size:10),
                  )
                ],
              ),
            ),
          )
        ]
      ),
      )
    );
  }
}