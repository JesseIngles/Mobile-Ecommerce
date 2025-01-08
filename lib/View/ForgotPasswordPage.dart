import 'package:ecommerce/View/EmailSendPage.dart';
import 'package:flutter/material.dart';

class ForgotPasswordpage extends StatefulWidget {
  const ForgotPasswordpage({super.key});

  @override
  State<ForgotPasswordpage> createState() => _ForgotPasswordpageState();
}

class _ForgotPasswordpageState extends State<ForgotPasswordpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                child: Image.asset('assets/arrowleft2.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Forgot Password',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(color: Colors.grey[100]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Email Adress'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EmailSendPage()));
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 142, 108, 239),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(child: Text('Continue')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
