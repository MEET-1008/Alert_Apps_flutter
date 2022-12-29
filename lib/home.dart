// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types


import 'package:flutter/material.dart';

import 'main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(

          "assets/Alertem Logo.png",
          color: Colors.white,
          height: 50,
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 20,),
          Icon(Icons.more_vert),
          SizedBox(width: 10,),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                Navigator.pushNamed(context, MyRoutes.locationRoutus);

                  },
                  child: Text('SEND LOCATION'),
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 50),
                    elevation: 20,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "OR",
                  style: TextStyle(fontSize: 40),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: GestureDetector(
                  onTap: (){
   Navigator.pushNamed(context, MyRoutes.alstRoutus);

                  },
                  child: CircleAvatar(
                      radius: 60,
                      child: CircleAvatar(
                        radius: 35,
                        child: Center(
                          child: Text("TRIGGER    PANIC"),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
