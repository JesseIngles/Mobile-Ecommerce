import 'package:ecommerce/View/LoginEmailPage.dart';
import 'package:flutter/material.dart';

class EmailSendPage extends StatefulWidget {
  const EmailSendPage({super.key});

  @override
  State<EmailSendPage> createState() => _EmailSendPageState();
}

class _EmailSendPageState extends State<EmailSendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/image 4.png'),
          SizedBox(
            height: 10,
          ),
          Text(
              'We Sent you an Email to reset your password.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginEmailpage()));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 52,
              width: 149,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 142, 108, 239),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  'Return to Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
