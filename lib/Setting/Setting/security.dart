import 'package:flutter/material.dart';

class security extends StatefulWidget {
  const security({super.key});

  @override
  State<security> createState() => _securityState();
}

class _securityState extends State<security> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Text("Edit for push notification, Yet not added"),
          )),
    );
  }
}