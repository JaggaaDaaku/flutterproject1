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
      appBar: PreferredSize(child: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        leading: Icon(Icons.home),
        leadingWidth: 50,
        actions: [
          Icon(Icons.app_registration)
        ]
      ), preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.1)),
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              child: Column(
              children: [
                for (int i = 0; i < st.length; i++) Text(st[i],style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.065),)
              ],
            )),
            ButtonTheme(
              height: MediaQuery.of(context).size.height*0.05,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => contantPage()));
                  });
                },
                child: Text(
                  "Let's Eat",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
              ),
            
          )
          ],
        )
      ),
    ));
  }
}