import 'package:flutter/material.dart';
import 'package:project1/data.dart';

class paymentscreen extends StatefulWidget {
  const paymentscreen({super.key});

  @override
  State<paymentscreen> createState() => _paymentscreenState();
}

class _paymentscreenState extends State<paymentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 243, 243),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                  blurRadius: 20
                )]
              ),
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              alignment: AlignmentDirectional.topStart,
              child: Column(
          children: [
            Center(
              child: Text('Delivery Address:'),
            ),
            Center(
              child: Text('${datamap['Address'][0]}'),
            ),
            Center(
              child: Text('${datamap['City'][0]}'),
            ),
            Center(
              child: Text('${datamap['State'][0]}'),
            ),
            Center(
              child: Text('Pincode: ${datamap['PinCode'][0]}'),
            ),
            Center(
              child: Text('Mobile Number: ${datamap['Mobile'][0]}'),
            ),
          ],
        ),
            )
          ],
        )
      ),
    );
  }
}