import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(appBar: AppBar(),body: Container(child: Text("Edit for push notification, Yet not added"),)),
    );
  }
}