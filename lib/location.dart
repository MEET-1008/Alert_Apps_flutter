// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'main.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
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
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
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
                child: Text("Send your location for help to",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: Image.asset("assets/Send Location pic.png"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
 Navigator.pushNamed(context, MyRoutes.homeRoutus);

                  },
                  child: Text('ADMIN'),
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
              Container(
                child: ElevatedButton(
                  onPressed: () {
 Navigator.pushNamed(context, MyRoutes.homeRoutus);

                  },
                  child: Text('GROUP'),
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 50),
                    elevation: 20,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
