import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key,required this.name});
  final String name;

  @override
  State<login> createState() => _loginState(name);
}

class _loginState extends State<login> {
  final String name;
  _loginState(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Center(
                  child: Text(
                    "Greetings, $name",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container()
            ],
          ),
        )
      ),
    );
  }
}