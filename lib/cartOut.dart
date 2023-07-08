import 'package:flutter/material.dart';
import 'package:project1/Rest.dart';
import 'sweet.dart';
import 'Contantpage.dart';

class cartout extends StatefulWidget {
  const cartout({super.key});

  @override
  State<cartout> createState() => _cartoutState();
}

class _cartoutState extends State<cartout> {
  @override
  Widget build(BuildContext context) {
    Widget cartRefreshQuantity(int j) {
      return Text('${cart['Quantity']?[j]}');
    }
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 227, 215),
                boxShadow: [BoxShadow(blurRadius: 0.15)]),
            child: Column(children: [
              for (int j = 0; j < cart['Product']!.length; j++)
                Container(
                  child: Row(
                    children: [
                      Text('${cart['Product']?[j]}'),
                      Spacer(),
                      Text('₹${cart['Price']?[j]}'),
                      SizedBox(),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                int q = cart['Quantity']?[j] as int;
                                q--;
                                cart['Quantity']?[j] = q;
                                setState(() {
                                  cartRefreshQuantity(j);
                                });
                              },
                              icon: Icon(Icons.remove_circle),
                            ),
                            cartRefreshQuantity(j),
                            IconButton(
                              onPressed: () {
                                int q = cart['Quantity']?[j] as int;
                                q++;
                                cart['Quantity']?[j] = q;
                                setState(() {
                                  cartRefreshQuantity(j);
                                });
                              },
                              icon: Icon(Icons.add_circle),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ]),
          ),
          Container(
              padding: EdgeInsets.only(top: 8),
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    cartwd('check');
                  });
                }, // TODO add checkout functionality here when ready to release app
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(children: [
                      Text("Checkout", style: TextStyle(fontSize: 16))
                    ])),
              ))
        ],
      ),
    );
  }
}