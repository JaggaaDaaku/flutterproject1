import 'package:flutter/material.dart';
import 'package:project1/data.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  Product p= Product();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              Container(
                child: TextButton(
                  child: Text("English"),
                  onPressed: () => p.change('English'),),
              ),
              Container(
                child: TextButton(
                  child: Text("Hindi"),
                  onPressed: () => p.change('Hindi'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}