import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                      onPressed: () {},
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
}
