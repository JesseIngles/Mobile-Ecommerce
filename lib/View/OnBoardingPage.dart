import 'package:ecommerce/View/LoginEmailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class OnBoardingpage extends StatefulWidget {
  const OnBoardingpage({super.key});

  @override
  State<OnBoardingpage> createState() => _OnBoardingpageState();
}

class _OnBoardingpageState extends State<OnBoardingpage> {
  goToLoginPage() async {
    await Future.delayed(Duration(milliseconds: 1800));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginEmailpage()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToLoginPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 142, 108, 239),
      body: Center(
        child: Image.asset('assets/Rectangle 13.png'),
      ),
    );
  }
}
