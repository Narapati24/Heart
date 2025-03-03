import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:heart/components/button.dart';
import 'package:heart/screens/verification_code.dart';
import 'package:heart/variable/const.dart';

class PhoneNumber extends StatefulWidget {
  String? email, password, fullname;
  PhoneNumber({super.key});
  PhoneNumber.signUp({super.key, this.email, this.password, this.fullname});

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
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const ListTile(
                title: Text('Enter your Phone Number'),
                subtitle: Text('Insert your Phone Number to Continue'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        width: 100,
                        height: 55,
                        decoration: const BoxDecoration(
                          border: BorderDirectional(
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: const CountryCodePicker(
                          initialSelection: 'ID',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: TextSize.large,
                            color: Colors.black,
                          ),
                          closeIcon: Icon(Icons.close),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        decoration: const BoxDecoration(
                          border: BorderDirectional(
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Phone Number',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 5),
                          ),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: TextSize.large,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Button(
                  label: 'Continue',
                  bgColor: const Color(0xFF4749A0),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const VerifCode();
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
