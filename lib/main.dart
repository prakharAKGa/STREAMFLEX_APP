import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streamflex/home.dart';

import 'firebase_options.dart';


void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
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