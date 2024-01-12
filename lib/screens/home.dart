import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text('Hi, User'),
                      subtitle: Text('Welcome back!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CircleAvatar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
