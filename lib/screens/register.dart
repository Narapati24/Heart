import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heart/components/button.dart';
import 'package:heart/components/input_field.dart';
import 'package:heart/screens/phone_number.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          sectionTitle(),
          const Image(
            image: AssetImage("assets/images/Illustration-register.png"),
          ),
          sectionForm(context)
        ],
      ),
    );
  }

  Form sectionForm(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname",
              style:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: InputField(
                    placeholder: 'First Name',
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InputField(
                    placeholder: 'Last Name',
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Email',
              placeholder: 'Enter your Email',
              validator: (value) {
                return;
              },
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Password',
              placeholder: 'Enter your Password',
              obscure: true,
              validator: (value) {
                return;
              },
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Confirm Password',
              placeholder: 'Enter your Confirm Password',
              obscure: true,
              validator: (value) {
                return;
              },
            ),
            const SizedBox(height: 20),
            Button(
              label: 'Sign Up',
              bgColor: const Color(0xFF4749A0),
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhoneNumber();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            toLogin(context),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  SizedBox toLogin(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Already have an account?",
            style: TextStyle(fontSize: 12),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Login"),
          )
        ],
      ),
    );
  }

  ListTile sectionTitle() {
    return ListTile(
      title: Text(
        "Create your Account",
        style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18)),
      ),
      subtitle: Text(
        "Create an account to start your journey",
        style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),
      ),
    );
  }
}
