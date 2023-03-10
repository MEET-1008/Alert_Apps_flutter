// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'main.dart';

class otp extends StatelessWidget {
  const otp({super.key});

  Widget otpbox() {
    return Expanded(
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
              labelText: null),
          onChanged: (value) {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
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
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 50, child: Image.asset("assets/mobile.png")),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(" Please wait, enter your otp "),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Row(
                children: [
                  otpbox(),
                  SizedBox(
                    width: 10,
                  ),
                  otpbox(),
                  SizedBox(
                    width: 10,
                  ),
                  otpbox(),
                  SizedBox(
                    width: 10,
                  ),
                  otpbox(),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.infoRoutus);
              },
              child: Text('SUBMIT'),
              style: TextButton.styleFrom(
                minimumSize: Size(300, 50),
                elevation: 20,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    child: SizedBox(
                      height: 100,
                      child: Card(
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
    );
  }
}
