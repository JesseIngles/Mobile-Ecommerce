import 'package:ecommerce/View/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPasswordpage extends StatefulWidget {
  const LoginPasswordpage({super.key});

  @override
  State<LoginPasswordpage> createState() => _LoginpasswordpageState();
}

class _LoginpasswordpageState extends State<LoginPasswordpage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding:
                  EdgeInsets.only(left: 20, top: size.height * 0.065, right: 20),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Sign in',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Password', border: InputBorder.none),
                    )),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 142, 108, 239),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(child: Text('Continue')),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                    text: TextSpan(
                        text: "\tForgot Password ?",
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: '\tReset',
                          style: TextStyle(
                              color: Colors.black87, fontWeight: FontWeight.bold))
                    ]))
              ])),
        ));
  }
}
