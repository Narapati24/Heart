import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:heart/components/button.dart';
import 'package:heart/screens/login.dart';

class VerifCode extends StatelessWidget {
  const VerifCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const ListTile(
                title: Text('Enter your code verification number'),
                subtitle: Text('We already sent the code to (+62) ...'),
              ),
              VerificationCode(
                onCompleted: (value) {},
                onEditing: (value) {},
                margin: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Didn’t receive the code?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Get New Code'),
                    ),
                  ],
                ),
                Button(
                  label: 'Continue',
                  bgColor: const Color(0xFF4749A0),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Login();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
