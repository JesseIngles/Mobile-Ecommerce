import 'package:ecommerce/View/CreateAccountPage.dart';
import 'package:ecommerce/View/LoginPasswordpage.dart';
import 'package:flutter/material.dart';

class LoginEmailpage extends StatefulWidget {
  const LoginEmailpage({super.key});

  @override
  State<LoginEmailpage> createState() => _LoginEmailpageState();
}

class _LoginEmailpageState extends State<LoginEmailpage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(left: 20, top: size.height * 0.065, right: 20),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      hintText: 'Email Adress', border: InputBorder.none),
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPasswordpage()));
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccountpage()));
              },
              child: RichText(
                  text: TextSpan(
                      text: "\tDont have an Account ?",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                        text: '\tCreate One',
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold))
                  ])),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/Vector(1).png'),
                      Spacer(),
                      Text('Continue With Apple'),
                      Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/Google - png 0.png'),
                      Spacer(),
                      Text('Continue With Google'),
                      Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/Facebook - png 0.png'),
                      Spacer(),
                      Text('Continue With Facebook'),
                      Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
                ),
              ),
        ));
  }
}
