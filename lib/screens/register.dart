import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heart/screens/login.dart';
import 'package:heart/screens/phone_number.dart';
import 'package:heart/screens/verification_code.dart';
import 'package:heart/services/auth.dart';
import 'package:heart/components/button.dart';
import 'package:heart/components/input_field.dart';
import 'package:heart/screens/phone_number.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

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
      key: _formKey,
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
                    controller: _firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Fill The First Name';
                      }
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InputField(
                    placeholder: 'Last Name',
                    controller: _lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Fill The Last Name';
                      }
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Email',
              placeholder: 'Enter your Email',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Fill The Email';
                }
              },
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Password',
              placeholder: 'Enter your Password',
              obscure: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              controller: _passwordController,
            ),
            const SizedBox(height: 20),
            InputField(
              label: 'Confirm Password',
              placeholder: 'Enter your Confirm Password',
              obscure: true,
              validator: (value) {
                if (value != _passwordController.text) {
                  return 'password did not match';
                }
                return null;
              },
              controller: _passwordConfirmController,
            ),
            const SizedBox(height: 20),
            Button(
                label: 'Sign Up',
                bgColor: const Color(0xFF4749A0),
                textColor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _register();
                  }
                }),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Login()));
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

  void _register() async {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String fullName = firstName + ' ' + lastName;
    String email = _emailController.text;
    String password = _passwordController.text;
    String passwordConfirm = _passwordConfirmController.text;

    if (password != passwordConfirm) {
      print("Password not same");
      return;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PhoneNumber.signUp(
                  fullname: fullName,
                  email: email,
                  password: password,
                )));

    // User? user =
    //     await _auth.signUpWithEmailAndPassword(email, password, fullName);

    // if (user != null) {
    //   print("User is successfully created");
    // } else {
    //   print("Some error happend");
    // }
  }
}
