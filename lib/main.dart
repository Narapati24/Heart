// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:heart/screens/login.dart';

void main() {
  runApp(const HeartApp());
}

class HeartApp extends StatelessWidget {
  const HeartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
