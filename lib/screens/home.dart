import 'package:flutter/material.dart';
import 'package:heart/variable/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: uiHome(),
      bottomNavigationBar: navbar(),
    );
  }

  Container navbar() {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 5,
              color: Colors.black12,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/icon/home.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        // color: Colors.black,
                        ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/icon/calendar.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Calendar',
                    style: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/icon/mail.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/icon/user.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView uiHome() {
    return ListView(
      children: [
        greeting(),
        appointment(),
        const Divider(
          thickness: 10,
          color: Colors.black12,
        ),
        problem(),
        const Divider(
          thickness: 10,
          color: Colors.black12,
        ),
        topTherapist(),
      ],
    );
  }

  Padding topTherapist() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Therapist',
                style: TextStyle(
                  fontSize: TextSize.extraLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  color: const Color(0xFFF9CFD4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          // margin: const EdgeInsets.symmetric(vertical: 15),
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
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Abdullah Pasha',
                              style: TextStyle(
                                fontSize: TextSize.extraLarge,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Broken Home Specialist'),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/icon/star.png'),
                                ),
                                SizedBox(width: 5),
                                Text('4.8'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding problem() {
    return Padding(
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(15),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF4749A0),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('assets/images/icon/family.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Family'),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(15),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF4749A0),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('assets/images/icon/relationship.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Relationship'),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(15),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF4749A0),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('assets/images/icon/lonely.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Lonely'),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(15),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF4749A0),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('assets/images/icon/major.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Major'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container greeting() {
    return Container(
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
    );
  }

  Padding appointment() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Appointment',
            style: TextStyle(
              fontSize: TextSize.extraLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
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
                            image:
                                NetworkImage('https://placeholder.com/100x100'),
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
        ],
      ),
    );
  }
}
