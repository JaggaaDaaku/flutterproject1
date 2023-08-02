import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        child: LiquidSwipe(
          onPageChangeCallback: (activePageIndex) {
            
            setState(() {
              i = activePageIndex;
            });
          },
          pages: [
          Container(color: Color.fromARGB(137, 6, 247, 38),child: Text("$i"),),
          Container(color: const Color.fromARGB(96, 236, 6, 6),
                child: Text("$i"),
              ),
          Container(color: Color.fromARGB(66, 11, 26, 236),
                child: Text("$i"),
              ),
          Container(color: const Color.fromARGB(31, 255, 253, 253),
                child: Text("$i"),
              )
        ]),
      ),);
  }
}