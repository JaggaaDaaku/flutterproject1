import 'package:flutter/material.dart';

class customerSupport extends StatefulWidget {
  const customerSupport({super.key});

  @override
  State<customerSupport> createState() => _customerSupportState();
}

class _customerSupportState extends State<customerSupport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(appBar: AppBar(title: Text("Customer Support"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Contact us : *********"),
            Text("Message : **********"),
            Text("WhatsApp : **********"),
          ],
        )
      ),
      ),
    );
  }
}