import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          Text("About"),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Text(
                  "Singhraj Bhati Sweets",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Nohar",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Text(
              "30 Years old famous Sweets shop  Upbringing the tradition on delicious sweets"),
          Text("Situalted near Sindhi Bazar in Nohar"),
          Text("Upbringing the tradition on delicious sweets"),
          Text("Contact : **********")
        ],
      )),
    );
  }
}