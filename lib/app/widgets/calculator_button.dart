import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int? fillColor;
  final int textColor;
  final double textSize;
  final Function? callback;

  const CalculatorButton({
    super.key,
    required this.text,
    this.fillColor,
    this.textColor = 0xFF8A0606,
    this.textSize = 28,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          onPressed: () {
            callback!(text);
          },
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
                color: Color(textColor),
              ),
              color: fillColor != null ? Color(fillColor!) : null,
            ),
          ),
        ),
      ),
    );
  }
}
