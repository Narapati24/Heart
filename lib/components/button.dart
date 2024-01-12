import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String label;
  Color? textColor, bgColor;
  double? sizeWidth, sizeHeight, fs;
  void Function()? onPressed;
  Button(
      {super.key,
      required this.label,
      this.textColor = Colors.white,
      this.bgColor = const Color(0xFF4749A0),
      this.sizeHeight = 0,
      this.sizeWidth = 0,
      this.fs = 0,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidth == 0 ? double.infinity : sizeWidth,
      height: sizeWidth == 0 ? 55 : sizeWidth,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              side: BorderSide(
                color: Color(0xFF4749A0),
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            bgColor,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(color: textColor, fontSize: fs != 0 ? fs : 18),
        ),
      ),
    );
  }
}
