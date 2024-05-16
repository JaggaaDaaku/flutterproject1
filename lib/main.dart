import 'package:flutter/material.dart';
import 'package:project1/MyHomePage.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      /*routes: <String,WidgetBuilder>{
        '/category_screen':(BuildContext context) => category_screen(),
      },*/
    );
  }
}

