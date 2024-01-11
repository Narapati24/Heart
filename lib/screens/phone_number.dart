import 'package:flutter/material.dart';
import 'package:heart/components/input_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          // onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(children: [
        const ListTile(
          title: Text('Enter your Phone Number'),
          subtitle: Text('Insert your Phone Number to Continue'),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const SizedBox(
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                    isDense: true,
                    contentPadding: EdgeInsets.all(30),
                  ),
                  trailingIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 40,
                  ),
                  hintText: '+62',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: 'label')
                  ],
                ),
              ),
              Expanded(
                child: InputField(
                  placeholder: 'Phone Number',
                  height: 50,
                  isDense: true,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
