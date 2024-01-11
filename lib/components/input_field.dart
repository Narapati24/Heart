import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  String? label, placeholder;
  bool? obscure, isDense;
  String? Function(String?)? validator;
  double? height, width;
  InputField(
      {super.key,
      this.label = '',
      this.placeholder,
      this.obscure = false,
      this.validator,
      this.height = 40,
      this.width = double.infinity,
      this.isDense = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != '')
          Text(
            label!,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 18),
            ),
          ),
        if (label != '') const SizedBox(height: 10),
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            obscureText: obscure! ? true : false,
            autocorrect: obscure! && false,
            enableSuggestions: obscure! && false,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              hintText: placeholder,
              isDense: isDense,
              border: !isDense!
                  ? OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(221, 229, 233, 1),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    )
                  : null,
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
