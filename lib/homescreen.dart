// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var ld = 1;
    var rd = 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
        backgroundColor: Colors.green[100],
      ),
      body: GestureDetector(
        onTap: () {
          print("tab");
          var r1 = Random().nextInt(5) + 1;
          var r2 = Random().nextInt(5) + 1;

          print(r1);

          print(r2);
          setState(() {
            ld = r1;
            rd = r2;
          });
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: 150,
                image: AssetImage('assets/dice${ld}.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                width: 150,
                image: AssetImage('assets/dice${rd}.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
