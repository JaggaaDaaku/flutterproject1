import 'package:flutter/material.dart';
import 'package:project1/Setting/useraccount/login.dart';
import 'package:project1/Setting/useraccount/signin.dart';
import 'package:project1/database/userdata/signupdata.dart';

class useraccount extends StatefulWidget {
  const useraccount({super.key});

  @override
  State<useraccount> createState() => _useraccountState();
}

class _useraccountState extends State<useraccount> {
  @override
  Widget build(BuildContext context) {
    var idcontroller=TextEditingController();
    var pass=TextEditingController();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Account'),
        ),
        body: Container(

          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            controller: PageController(),
            child: Column(
            children: [
              Container(
                child: Text('Greetings',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                alignment: Alignment.topLeft,
                child: Text('Enter Email or Phone Number'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: TextFormField(
                  controller: idcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email or Phone Number'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                alignment: Alignment.topLeft,
                child: Text('Password'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                Userdata u=Userdata();
                if(u.check(idcontroller.text,pass.text)){
                  Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      login(name: u.checkn(
                                              idcontroller.text, pass.text))));
                }else{
                  showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  
                                  content:
                                      Text('Something went wrong, Try again'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      useraccount()));
                                        },
                                        child: Text("OK"))
                                  ],
                                );
                              });
                }
                
              }, child: Text("Log In")),
              SizedBox(height: 100,),
              Text('For New User',style: TextStyle(fontSize: 10)),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    signin()));
              }, child: Text("Register")),
              Text('or', style: TextStyle(fontSize: 10)),
              Container(
                child: Text('If You Forgot Password'),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Forgot Passwort'))
            ],
          ),
          )
        ),
      ),
    );
  }
}