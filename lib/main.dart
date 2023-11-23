import 'package:flutter/material.dart';
import 'package:streamflex/home.dart';


void main() {
  runApp(
    Appss()
    );
  
}
class Appss extends StatelessWidget {
  const Appss({Key ?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}