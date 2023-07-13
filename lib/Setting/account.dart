import 'package:flutter/material.dart';
import 'package:project1/Setting/about.dart';
import 'package:project1/Setting/customerSupport.dart';
import 'package:project1/Setting/feedback.dart';
import 'package:project1/Setting/help.dart';
import 'package:project1/Setting/reviews.dart';
import 'package:project1/Setting/settings.dart';
import 'package:project1/Setting/userAccount.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10))
          ),
          child: TextButton(onPressed: (){
            Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,secanimation)=> useraccount()));
          }, child: Text(
                'User Account',
                style: TextStyle(fontSize: 30),
              )),
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(
            onPressed: (){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secanimation) =>
                        settings()));
              },
            child: Text('Settings', style: TextStyle(fontSize: 30)),)
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(
            onPressed: (){
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secanimation) =>
                      feedback()));
            },
            child: Text('Feedback', style: TextStyle(fontSize: 30)),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(onPressed: (){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secanimation) =>
                        reviews()));
              }, child: Text('Reviews', style: TextStyle(fontSize: 30)),
            )
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(
            onPressed: (){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secanimation) =>
                        help()));
              },
            child: Text('Help', style: TextStyle(fontSize: 30)),
          )
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(
            onPressed: (){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secanimation) =>
                        customerSupport()));
              },
            child: Text('Customer Support', style: TextStyle(fontSize: 30)),
          )
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          //padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
          child: TextButton(
            onPressed: (){
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secanimation) =>
                        about()));
              },
            child: Text('About', style: TextStyle(fontSize: 30)),
          )
        )
      ]),
    );
  }
}