// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import 'main.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

Widget con1(IconData icon1) {
  return Expanded(
    child: Container(
      height: 60,
      child: IconButton(
        onPressed: null,
        icon: Icon(
          icon1,
          size: 35,
        ),
      ),
    ),
  );
}

Widget con2(String text1) {
  return Expanded(
    flex: 3,
    child: Container(
        height: 60,
        // color: Colors.red,
        child: TextFormField(
          style: TextStyle(fontSize: 25),
          decoration: InputDecoration(hintText: '$text1'),
        )),
  );
}

Widget rowcrt(IconData icon1 , String text1) {
  return Row(
    children: [
      con1(icon1),
      con2(text1),
    ],
  );
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 60,
                        child: Image.asset(
                          "assets/Alertem Logo.png",
                          color: Colors.red,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              rowcrt(Icons.account_circle_outlined, 'Name '),
              rowcrt(Icons.lock_outline_rounded, 'Password '),
              rowcrt(Icons.phone, 'Contact Number'),
              rowcrt(Icons.badge_sharp, 'Designation'),
              rowcrt(Icons.email_outlined, 'Email '),
              rowcrt(Icons.home_outlined, 'Address '),
           
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
           Navigator.pushNamed(context, MyRoutes.homeRoutus);
      
                },
                child: Text('SUBMIT'),
                style: TextButton.styleFrom(
                  minimumSize: Size(300, 50),
                  elevation: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: null,
                      height: 45,
                      child: SizedBox(
                        height: 100,
                        child: Card(
                          color: null,
                          elevation: 0,
                          child: Image.asset(
                            "assets/Gorisco white.png",
                            color: Color.fromARGB(255, 91, 26, 141),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
