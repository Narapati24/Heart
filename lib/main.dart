// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:heart/screens/onboarding.dart';

void main() {
  runApp(const HeartApp());
}

class HeartApp extends StatelessWidget {
  const HeartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        background: [
          Image.asset('assets/images/illustration-slide1.png'),
          Image.asset('assets/images/illustration-slide2.png'),
          Image.asset('assets/images/illustration-slide3.png'),
        ],
        speed: 2,
        pageBodies: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            child: const Text('data'),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            child: const Text('data'),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            child: const Text('data'),
          ),
        ],
      ),
    );
  }
}
