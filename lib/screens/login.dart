import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heart/screens/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Welcome Back,",
              style:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18)),
            ),
            subtitle: Text(
              "Login to continue your journey",
              style:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)),
            ),
          ),
          const Image(
              image: AssetImage("assets/images/Illustration-login.png")),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 18)),
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(221, 229, 233, 1)),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) =>
                          value != null && !EmailValidator.validate(value)
                              ? "Please input an Email Addres"
                              : null),
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
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
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
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Login with Google",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Doesn't have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const Register();
                              },
                            ));
                          },
                          child: const Text("Register"))
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
}
