import 'package:flutter/material.dart';
import 'package:project1/Setting/Setting/language.dart';
import 'package:project1/Setting/Setting/notification.dart';
import 'package:project1/Setting/Setting/permission.dart';
import 'package:project1/Setting/Setting/security.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*0.10,
                child: TextButton(
                  child: Text('Notification'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => notification()));
                  },
                  ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.10,
                child: TextButton(
                  child: Text('Permission'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => permission()));
                  },
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.10,
                child: TextButton(
                  child: Text('Security'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => security()));
                  },
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.10,
                child: TextButton(
                  child: Text('Language'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>language()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}