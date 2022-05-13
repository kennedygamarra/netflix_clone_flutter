import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{
  myApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
      
  }

}