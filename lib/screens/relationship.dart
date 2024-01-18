import 'package:flutter/material.dart';
import 'package:heart/screens/consult_later.dart';
import 'package:heart/variable/const.dart';

class Relationship extends StatelessWidget {
  const Relationship({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: const Icon(Icons.search, size: 30),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          filtering(),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Relationship',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TextSize.large,
              ),
            ),
          ),
          listRelationship(),
        ],
      ),
    );
  }

  Flexible listRelationship() {
    return Flexible(
      flex: 1,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Card(
              elevation: 0,
              color: const Color(0xFFF9CFD4),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      // margin: const EdgeInsets.symmetric(vertical: 15),
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
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 210,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Abdullah Pasha',
                            style: TextStyle(
                              fontSize: TextSize.extraLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('Broken Home Specialist'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/icon/star.png'),
                              ),
                              SizedBox(width: 5),
                              Text('4.8'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Rp. 49.000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: TextSize.large,
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                ),
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                    alignment: Alignment.bottomCenter,
                                    insetPadding: const EdgeInsets.all(0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 25),
                                      height: 225,
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'When do you want a Consultation ?',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: TextSize.extraLarge,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Consult Now',
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              TextSize.large,
                                                        ),
                                                      ),
                                                      Text(
                                                        'You can immediately do a Consultation',
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: TextSize
                                                              .defaultSize,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_rounded,
                                                  size: 40,
                                                  color: Colors.black54,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return const ConsultLater();
                                                  },
                                                ),
                                              );
                                            },
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Consult Later',
                                                        style: TextStyle(
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              TextSize.large,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Choose the date & time according to your needs',
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: TextSize
                                                              .defaultSize,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_rounded,
                                                  size: 40,
                                                  color: Colors.black54,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Chat',
                                  style: TextStyle(
                                    fontSize: TextSize.small,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox filtering() {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 15,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Icon(
              Icons.filter_alt_rounded,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Rated 4.5+',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Experience',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Price',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Gender',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
