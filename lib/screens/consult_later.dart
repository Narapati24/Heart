import 'package:flutter/material.dart';

class ConsultLater extends StatelessWidget {
  const ConsultLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        height: 200,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFFF9CFD4),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://placeholder.com/100x100'),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text('Randi S.Psi M.Psi'),
                  Text('Psikolog klinis'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
