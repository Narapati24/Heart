import 'package:flutter/material.dart';
import 'package:heart/screens/order_confirmation.dart';
import 'package:heart/variable/const.dart';
import 'package:intl/intl.dart';

class ConsultLater extends StatefulWidget {
  const ConsultLater({super.key});

  @override
  State<ConsultLater> createState() => _ConsultLaterState();
}

class _ConsultLaterState extends State<ConsultLater> {
  bool onClickDate = false;
  int dateClick = 0;

  bool onClickHour = false;

  String hourClick = '';

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();

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
              Container(
                height: 150,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9CFD4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/sample.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Randi S.Psi M.Psi',
                            style: TextStyle(
                              fontSize: TextSize.large,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Psikolog klinis'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Rp. 49.000',
                            style: TextStyle(
                              fontSize: TextSize.extraLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Text(
                      '7 years experiences',
                      style: TextStyle(
                        fontSize: TextSize.extraSmall,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Pasundan University, 2012',
                      style: TextStyle(
                        fontSize: TextSize.extraSmall,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Padjajaran University, 2016',
                      style: TextStyle(
                        fontSize: TextSize.extraSmall,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    DateFormat.yMMMM()
                        .format(
                          DateTime.now(),
                        )
                        .toString(),
                    style: const TextStyle(
                      fontSize: TextSize.extraLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 15, top: 20),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemCount: 14,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          onClickDate = true;
                          dateClick = index;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          (onClickDate && dateClick == index)
                              ? const Color(0xFF4749A0)
                              : const Color(0xFFF3F4F8),
                        ),
                      ),
                      child: Text(
                        DateFormat.d()
                            .format(
                              DateTime(date.year, date.month, date.day + index),
                            )
                            .toString(),
                        style: TextStyle(
                          color: (onClickDate && dateClick == index)
                              ? const Color(0xFFF3F4F8)
                              : const Color(0xFF4749A0),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '11:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '11:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '11:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '11:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '13:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '13:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '13:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '13:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '14:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '14:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '14:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '14:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '15:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '15:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '15:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '15:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '16:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '16:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '16:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '16:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '19:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '19:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '19:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '19:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '20:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '20:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '20:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '20:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '21:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '21:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '21:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '21:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: (onClickDate)
                              ? () {
                                  setState(() {
                                    onClickHour = true;
                                    hourClick = '22:00';
                                  });
                                }
                              : () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              (onClickHour && hourClick == '22:00')
                                  ? const Color(0xFF4749A0)
                                  : const Color(0xFFF3F4F8),
                            ),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          child: Text(
                            '22:00',
                            style: TextStyle(
                              color: (onClickDate && hourClick == '22:00')
                                  ? Colors.white
                                  : Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (onClickHour)
                  ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const OrderConfirmation(),
                        ),
                      );
                    }
                  : () {},
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  (onClickHour)
                      ? const Color(0xFF4749A0)
                      : const Color(0xFFF3F4F8),
                ),
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Book an Appointment',
                  style: TextStyle(
                    color: (onClickHour) ? Colors.white : Colors.black38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
