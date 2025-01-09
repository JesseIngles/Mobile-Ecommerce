import 'package:ecommerce/View/LoginEmailPage.dart';
import 'package:flutter/material.dart';

class TellAboutYourSelf extends StatefulWidget {
  const TellAboutYourSelf({super.key});

  @override
  State<TellAboutYourSelf> createState() => _TellAboutYourSelfState();
}

class _TellAboutYourSelfState extends State<TellAboutYourSelf> {
  // Array de faixas etárias
  final List<String> ageRanges = [
    'Under 18',
    '18-24',
    '25-34',
    '35-44',
    '45-54',
    '55+'
  ];
  String selectedAgeRange = 'Under 18';
  int index = 0;
  void mudarGenero(int index) {
    setState(() {
      this.index = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tell us About yourself',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text('Who do you shop for?'),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              mudarGenero(0);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: (index == 0)
                                    ? Color.fromARGB(255, 142, 108, 239)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Men',
                                  style: TextStyle(color: (index == 0)
                                    ? Colors.white
                                    : Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              mudarGenero(1);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: (index == 1)
                                    ? Color.fromARGB(255, 142, 108, 239)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Women',
                                  style: TextStyle(color: (index == 1)
                                    ? Colors.white
                                    : Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text('How Old are you?'),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        dropdownColor: Colors.grey[100],
                        isExpanded: true,
                        value: selectedAgeRange,
                        onChanged: (value) {
                          setState(() {
                            selectedAgeRange = value!;
                          });
                        },
                        items: ageRanges
                            .map((age) => DropdownMenuItem<String>(
                                  value: age,
                                  child: Text(age),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginEmailpage()));
              },
              child: Container(
                height: size.height * 0.13,
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Colors.grey[100],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 142, 108, 239),
                  ),
                  child: Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
