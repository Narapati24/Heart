import 'package:flutter/material.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text('Order Confirmation'),
      ),
    );
  }
}
