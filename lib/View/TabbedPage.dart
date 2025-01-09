import 'package:ecommerce/View/HomePage.dart';
import 'package:ecommerce/View/LoginEmailPage.dart';
import 'package:flutter/material.dart';

class Tabbedpage extends StatefulWidget {
  const Tabbedpage({super.key});

  @override
  State<Tabbedpage> createState() => _TabbedpageState();
}

class _TabbedpageState extends State<Tabbedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          LoginEmailpage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/notificationbing.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/receipt1.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/profile.png'), label: ' ')
        ],
      ),
    );
  }
}
