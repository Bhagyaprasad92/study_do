import 'package:flutter/material.dart';
import 'package:study_do/signUp.dart';

void main() {
  runApp(myApp());
}

// Add devcie preview

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: signUpScreen(), debugShowCheckedModeBanner: false);
  }
}
