import 'package:car_share_v0/UI/home.dart';
import 'package:car_share_v0/UI/omboarding_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'CarShare',
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

