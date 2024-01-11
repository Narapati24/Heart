import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heart/user_auth/firebase_auth_implementation/firebase_auth_services.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Create your Account",
              style:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18)),
            ),
            subtitle: Text(
              "Create an account to start your journey",
              style:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),
            ),
          ),
          const Image(
              image: AssetImage("assets/images/Illustration-register.png")),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fullname",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextFormField(
                          controller: _firstNameController,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 18)),
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                              hintText: "First Name",
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(221, 229, 233, 1)),
                                  borderRadius: BorderRadius.circular(8))),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextFormField(
                          controller: _lastNameController,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 18)),
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                              hintText: "Last Name",
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(221, 229, 233, 1)),
                                  borderRadius: BorderRadius.circular(8))),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _emailController,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 18)),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(221, 229, 233, 1)),
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 18)),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(221, 229, 233, 1)),
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(71, 73, 160, 1)),
                      ),
                      onPressed: _register,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
                const SizedBox(height: 30),
                SizedBox(
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
                          child: const Text("Login"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  void _register() async {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully created");
      Navigator.of(context).pop();
    } else {
      print("Some error happend");
    }
  }
}
