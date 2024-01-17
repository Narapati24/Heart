// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heart/screens/login.dart';
import 'package:heart/screens/phone_number.dart';
// import 'package:heart/screens/login.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:heart/screens/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDmadXQE5wy3dHqN_hSVDZRxP_Xy9vUhFc",
          appId: "1:355023854653:android:0a269a669a09b5b6e41e54",
          messagingSenderId: "355023854653",
          projectId: "heart-d8c03"));
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
