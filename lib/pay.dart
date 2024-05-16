import 'package:flutter/material.dart';
import 'package:project1/paymentscreen.dart';
import 'data.dart';


class payment extends StatefulWidget {
  const payment({super.key,required this.totle});
  final int totle;

  @override
  State<payment> createState() => _paymentState(totle);
}

class _paymentState extends State<payment> {
  final Addcontroller=TextEditingController();
  final Citycontroller = TextEditingController();
  final Statecontroller = TextEditingController();
  final Pincontroller=TextEditingController();
  final Mobcontroller = TextEditingController();
  addData(){
    datamap['Address']!.add(Addcontroller.text);
    datamap['City']!.add(Citycontroller.text);
    datamap['State']!.add(Statecontroller.text);
    datamap['PinCode']!.add(int.parse(Pincontroller.text));
    datamap['Mobile']!.add(int.parse(Mobcontroller.text));
  }
  int totle;
  _paymentState(this.totle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          leading: BackButton(
            onPressed:() {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
          backgroundColor: Colors.white70,
          elevation: 5,
          //leadingWidth: MediaQuery.of(context).size.width * 0.38,
          title: Text("Delivery Details"),
        ), 
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.1)
        ),
        body: Container(child :SingleChildScrollView(
          child: Column(
          children: [
            Container(
              height: 20,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Total Amount : $totle',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
                child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text('Enter Delivery Address'),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                        controller: Addcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Address'),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                        controller: Citycontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'City/Town/Village'),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                        controller: Statecontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'State'),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                        controller: Pincontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'PinCode'),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text('Enter Mobile Number'),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: TextFormField(
                        controller: Mobcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Mobile Number'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text('Select Payment Method'),
                    ),
                  ],
                )
              ],
            )),
            TextButtonTheme(
              data: TextButtonThemeData(), 
              child: TextButton(onPressed: () {
                addData();
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => paymentscreen()));
                });
              },
              child: Text('PROCESS'),))
          ],
        ),
        ) ),
    );
  }
}