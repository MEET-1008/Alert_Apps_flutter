// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

import 'main.dart';

class last extends StatelessWidget {
  const last({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 41, 41),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 300,
              child: Card(
                color:Colors.white,
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Are you safe?",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),),
                    SizedBox(height: 40,),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                           Navigator.pushNamed(context, MyRoutes.homeRoutus);

                        },
                        child: CircleAvatar(
                            radius: 60,
                            child: Center(
                              child: Text("TRIGGER \n PANIC"),
                            )),
                      ),
                    ),
                    SizedBox(height: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                         Navigator.pushNamed(context, MyRoutes.homeRoutus);

                      },
                      child: CircleAvatar(
                          radius: 60,
                            backgroundColor: Colors.green,
                          child: Center(
                            child: Text("TRIGGER \n PANIC"),
                          )),
                    ),
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}