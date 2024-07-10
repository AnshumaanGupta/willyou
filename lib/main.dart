// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // Calculate scaling factor
    double scaleFactor = screenWidth / 360;

    // CATTY
    double cattyw = 357, cattyh = 333;

    // Calculate the new dimensions
    double cattynw = cattyw * scaleFactor, cattynh = cattyh * scaleFactor;

    // Ensure the image height fits within the screen height
    if (cattynh > screenHeight) {
      scaleFactor = screenHeight / cattyh;
      cattynw = cattyw * scaleFactor;
      cattynh = cattyh * scaleFactor;
    }

    // // MILK
    // double milkw = 357, milkh = 333;

    // // Calculate the new dimensions
    // double milknw = milkw * scaleFactor, milknh = milkh * scaleFactor;

    // // Ensure the image height fits within the screen height
    // if (milknh > screenHeight) {
    //   scaleFactor = screenHeight / milkh;
    //   milknw = milkw * scaleFactor;
    //   milknh = milkh * scaleFactor;
    // }

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFFFFF7E7),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/milk.gif',
                      width: 64,
                      height: 67,
                    ),
                    Image.asset(
                      'assets/think.gif',
                      width: 80,
                      height: 85,
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/catty_s.png',
                width: cattynw,
                height: cattynh,
              )
            ],
          )),
    );
  }
}
