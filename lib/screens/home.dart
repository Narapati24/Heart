import 'package:flutter/material.dart';
import 'package:heart/components/button.dart';
import 'package:heart/variable/const.dart';

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
                      title: Text(
                        'Hi, User',
                        style: TextStyle(
                          fontSize: TextSize.large,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Appointment',
              style: TextStyle(
                fontSize: TextSize.extraLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 0,
              color: const Color(0xFFF9CFD4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://placeholder.com/100x100'),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: ListTile(
                          title: Text(
                            'Ariana Grande',
                            style: TextStyle(
                              fontSize: TextSize.large,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Today, 7 PM - 8 PM'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        child: const Text(
                          'Start Consultation',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 10,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Find your problem',
                  style: TextStyle(
                    fontSize: TextSize.extraLarge,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                newMethod()
              ],
            ),
          )
        ],
      ),
    );
  }

  ListView newMethod() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return const Text('ha');
      },
    );
  }
}
