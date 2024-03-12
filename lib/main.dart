// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:math';

import 'package:dicee_app/background.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int Right_photo = 2;
  int Left_photo = 1;

  void ChangeImage() {
    Left_photo = Random().nextInt(6) + 1; //0-6
    Right_photo = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColors,
        appBar: AppBar(
          title: Text(
            'DICEE',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'CormorantGaramond',
              letterSpacing: 4,
            ),
          ),
          backgroundColor: backgroundColors,
          elevation: 0,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChangeImage();
                    });
                  },
                  child: Image.asset('images/dice$Left_photo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChangeImage();
                    });
                  },
                  child: Image.asset('images/dice$Right_photo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
