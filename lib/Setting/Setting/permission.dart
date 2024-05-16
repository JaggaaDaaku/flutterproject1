import 'package:flutter/material.dart';

class permission extends StatefulWidget {
  const permission({super.key});

  @override
  State<permission> createState() => _permissionState();
}

class _permissionState extends State<permission> {
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