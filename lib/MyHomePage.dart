import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Contantpage.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> st=['Eat','Sleep','& Repeat'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              child: Column(
              children: [
                for (int i = 0; i < st.length; i++) Text(st[i],style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.069),)
              ],
            )),
            Container(
              height: 100,
            ),
            ButtonTheme(
              height: MediaQuery.of(context).size.height*0.15,
              child: FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    Navigator.of(context,rootNavigator: true).push(
                      new CupertinoPageRoute<bool>(
                        fullscreenDialog: true,
                        builder: (BuildContext context) => new  contantPage(),
                        ),

                        //MaterialPageRoute(builder: (context) => contantPage())
                        );
                  });
                },
                label: Text(
                  "Let's Eat",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
                focusColor: Colors.amber,
              ),
              
            
          )
          ],
        )
      ),
      
    ));
  }
}