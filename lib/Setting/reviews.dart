import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project1/data.dart';

class reviews extends StatefulWidget {
  const reviews({super.key});

  @override
  State<reviews> createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
  double minrate=0;
  @override
  Widget build(BuildContext context) {
    Product p=new Product();
    p.reviewfunc();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Review & Feedback"),
        ),
        body: Container(
          child: Column(
            children: [
              Text(
              "Review our desert and services :",
              style: TextStyle(fontSize: 20),
            ),
            RatingBar.builder(
              initialRating: minrate,//p.totlereview,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.amber,), 
              onRatingUpdate: (rating){
                p.reviewadd(rating );
                setState(() {
                  p.reviewfunc();
                  p.totlereview;
                  setState(() {
                    minrate=rating;
                  });
                });
              }
              ),
              SizedBox(height:30,),
              Container(
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Reviews'),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                if(minrate==0){
                  showDialog<String>(
                    context: context,
                    builder:(context) {
                      return AlertDialog(
                        content: Text("please give rating properly"),
                        actions: [
                          TextButton(onPressed:() {
                            Navigator.of(context).pop();
                          }, child: Text("OK"))
                        ],
                      );
                    },
                  );
                }else{
                  showDialog<String>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("You rated $minrate*"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"))
                          ],
                        );
                      },
                    );
                }
              }, 
              child: Text("Submit"))
            ],
          )
        ),),
    );
  }
}