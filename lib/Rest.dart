import 'package:flutter/material.dart';
import 'package:project1/category_screen.dart';
import 'package:project1/test/category1.dart';


class Rest extends StatefulWidget {
  const Rest({super.key});

  @override
  State<Rest> createState() => _RestState();
}

class _RestState extends State<Rest> {
  var catg={
    0:'Sweet Dessert',
    1:'Spicy Dessert',
    2:'Snacks',
    3:'Cake',
    4:'Cold Drink',
    5:'Ice Cream',
    6:'Row Form'};
  var logo={
    0:'assets/icon/sweet.png',
    1:'assets/icon/spicy.png',
    2:'assets/icon/snack.png',
    3:'assets/icon/cake.png',
    4:'assets/icon/drink.png',
    5:'assets/icon/ice.png',
    6:'assets/icon/row.png',
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
          for(int i=0;i<catg.length;i++)
          InkWell(
            onTap: (){
              Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                    cat1(page:i),
                         //category_screen(i: i),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      const curve = Curves.bounceInOut;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ));
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 209, 142),
              borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 100,
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