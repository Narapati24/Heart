import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heart/components/button.dart';
import 'package:heart/components/input_field.dart';
import 'package:heart/screens/register.dart';
import 'package:heart/services/auth.dart';
import 'package:heart/variable/const.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          sectionTitle(),
          const Image(
            image: AssetImage("assets/images/Illustration-login.png"),
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
          children: [
            InputField(
              label: 'Email',
              placeholder: 'Enter your Email',
              obscure: false,
              validator: (value) {
                return;
              },
              controller: _emailController,
            ),
            // emailField(),
            const SizedBox(height: 20),
            // const InputField(),
            InputField(
              label: 'Password',
              placeholder: 'Enter your Password',
              obscure: true,
              validator: (value) {
                return;
              },
              controller: _passwordController,
            ),
            const SizedBox(height: 20),
            Button(
              label: 'Login',
              bgColor: const Color(0xFF4749A0),
              textColor: Colors.white,
              onPressed: _login,
            ),
            const SizedBox(height: 20),
            Button(
              label: 'Login with Google',
              bgColor: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            toRegister(context),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  SizedBox toRegister(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Doesn't have an account?",
            style: TextStyle(fontSize: TextSize.small),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Register();
                  },
                ),
              );
            },
            child: const Text("Register"),
          )
        ],
      ),
    );
  }

  ListTile sectionTitle() {
    return ListTile(
      title: Text(
        "Welcome Back,",
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: TextSize.extraLarge),
        ),
      ),
      subtitle: Text(
        "Login to continue your journey",
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: TextSize.small),
        ),
      ),
    );
  }

  void _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully login");
    } else {
      print("Some error happend");
    }
  }
}
