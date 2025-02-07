import 'package:ecommerce/View/HomePage.dart';
import 'package:ecommerce/View/OnBoardingPage.dart';
import 'package:ecommerce/View/TabbedPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}
