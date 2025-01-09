import 'package:ecommerce/View/ForgotPasswordPage.dart';
import 'package:ecommerce/View/TellAboutYourSelfPage.dart';
import 'package:flutter/material.dart';

class CreateAccountpage extends StatefulWidget {
  const CreateAccountpage({super.key});

  @override
  State<CreateAccountpage> createState() => _CreateAccountpageState();
}

class _CreateAccountpageState extends State<CreateAccountpage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                      CircleAvatar(child: Image.asset('assets/arrowleft2.png'))),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create Account',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Firstname'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Lastname'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email Adress'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TellAboutYourSelf()));
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 49,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 142, 108, 239),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    'Continue',
                  )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordpage()));
                  },
                  child: RichText(
                    text: TextSpan(
                        text: '\tForgot Password?\t',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: 'Reset',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
