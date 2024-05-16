import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:project1/exploreScreen.dart';
import 'package:project1/search.dart';
import 'package:project1/data.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  String searchvalue = '';
  int state = 0;
  var textvalue = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool status = false;

  @override
  Widget build(BuildContext context) {
    Product p = Product();
    change(String value) {
      if (value.length > 0) {
        setState(() {
          status = true;
        });
      } else {
        setState(() {
          status = false;
          state = 0;
        });
      }
    }

    Widget needdata() {
      switch (state) {
        case 0:
          return exploreScreen();
        case 1:
          return search(value: searchvalue);
        default:
          return exploreScreen();
      }
    }

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(1, 1, 1, 1),
                    //borderRadius: BorderRadius.circular(15),
                    //border: Border.all(color: Colors.black)
                  ),
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: status
                              ? MediaQuery.of(context).size.width * 0.895
                              : MediaQuery.of(context).size.width * 0.995,
                          height: MediaQuery.of(context).size.height * 0.085,
                          child: Column(
                            children: [
                              TypeAheadFormField(
                                animationStart: 0,
                                animationDuration: Duration.zero,
                                textFieldConfiguration: TextFieldConfiguration(
                                    //autocorrect: true,
                                    controller: textvalue,
                                    style: TextStyle(fontSize: 15),
                                    decoration: InputDecoration(
                                        hintText: 'Search...',
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none)),
                                suggestionsCallback: (pattern) {
                                  if (textvalue.text.toString().isEmpty) {
                                    change(textvalue.text.toString());
                                    return [];
                                  } else {
                                    change(textvalue.text.toString());
                                  }
                                  List<String> match = <String>[];
                                  match.addAll(p.getProducts());
                                  match.retainWhere((element) {
                                    return element
                                        .toLowerCase()
                                        .contains(pattern.toLowerCase());
                                  });
                                  return match;
                                },
                                itemBuilder: (context, it) {
                                  return Card(
                                    child: Container(
                                      child: Text(it.toString()),
                                    ),
                                  );
                                },
                                onSuggestionSelected: (suggestion) {
                                  setState(() {
                                    searchvalue = suggestion;
                                    state = 1;
                                  });
                                },
                              ),
                            ],
                          )),
                      Visibility(
                          visible: status,
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          child: Container(
                              //padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: status
                                  ? MediaQuery.of(context).size.width * 0.1
                                  : MediaQuery.of(context).size.width * 0,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    searchvalue = textvalue.text.toString();
                                    state = 1;
                                  });
                                },
                                child: Icon(CupertinoIcons.search, size: 40),
                              )

                              //Navigator.pushNamed(context,'/result');
                              )),
                    ],
                  )),
            ),
            needdata()
          ],
        ),
      ),
    );
  }
}
