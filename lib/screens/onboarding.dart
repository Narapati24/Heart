import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:heart/screens/login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        background: [
          Image.asset('assets/images/Illustration-slide1.png'),
          Image.asset('assets/images/Illustration-slide2.png'),
          Image.asset('assets/images/Illustration-slide3.png'),
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
