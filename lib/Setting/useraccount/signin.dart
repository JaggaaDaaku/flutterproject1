import 'package:flutter/material.dart';
import 'package:project1/Setting/userAccount.dart';
import 'package:project1/database/userdata/signupdata.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  var name=TextEditingController();
  var email=TextEditingController();
  var mobnum = TextEditingController();
  var pass = TextEditingController();
  var conpass = TextEditingController();
  var addr = TextEditingController();
  var city = TextEditingController();
  var stat = TextEditingController();
  var pinc = TextEditingController();
  bool sub=false;
  submit(){
    Userdata user=Userdata();
    bool a= user.register(
      name.text.toString(), 
      email.text.toString(), 
      int.parse(mobnum.text), 
      pass.text.toString(), 
      addr.text.toString(), 
      city.text.toString(), 
      stat.text.toString(), 
      int.parse(pinc.text));
    if(a)
      sub=true;
    else
      sub= false;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          alignment: AlignmentDirectional.centerStart,
          color: Colors.white70,
          child: SingleChildScrollView(
            child: Column(
            children: [
              Container(
                child: Text('Sign In',style: TextStyle(fontSize: 20),),
              ),
              Container(
                    child: Text('Enter Your Name:'),
                  ),
                  Container(
                    child: TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Name'),
                    ),
                  ),
              Container(
                child: Text('Enter Email Address:'),
              ),
              Container(
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address'
                  ),
                ),
              ),
              Container(
                child: Text('Enter Mobile Number:'),
              ),
              Container(
                child: TextFormField(
                  controller: mobnum,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Mobile Number'),
                ),
              ),
              Container(
                child: Text('Enter Password:'),
              ),
              Container(
                child: TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
              Container(
                child: Text('Enter Confirm Password:'),
              ),
              Container(
                child: TextFormField(
                  controller: conpass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Confirm Password'),
                ),
              ),
              Container(
                child: Text('Enter Address:'),
              ),
              Container(
                child: TextFormField(
                  controller: addr,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Address'),
                ),
              ),
              Container(
                child: Text('Enter City/Town/Village:'),
              ),
              Container(
                child: TextFormField(
                  controller: city,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'City/Town/Village'),
                ),
              ),
              Container(
                child: Text('Enter State Name:'),
              ),
              Container(
                child: TextFormField(
                  controller: stat,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'State'),
                ),
              ),
              Container(
                child: Text('Enter Pincode:'),
              ),
              Container(
                child: TextFormField(
                  controller: pinc,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'PinCode'),
                ),
              ),
              ElevatedButton(
                      onPressed: () {
                        if(pass.text==conpass.text){
                          submit();
                          if(sub){
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(
                                        'You have successfully Registered'),
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
                          }else{
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Your Account already exist'),
                                    content: Text('Try to LogIn'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>useraccount()));
                                            
                                          },
                                          child: Text("OK"))
                                    ],
                                  );
                                });
                          }
                        }
                        else{
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Password does not Match'),
                                  content: Text('Please confirm password'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"))
                                  ],
                                );
                              });
                        }
                      }, child: Text('Register'))
            ],
          ),
          )
        ),
      ),
    );
  }

  Future<void> alreadyregistered(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext){
        return AlertDialog(
          content: Text('Your Mobile Number or Email is already registered'),
          actions: <Widget>[
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('OK'))
          ]
        );
      }
      );
  }
}