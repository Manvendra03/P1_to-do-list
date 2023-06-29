import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayWidget extends StatelessWidget {
  final String upperText;
  final String lowerText;
  const DayWidget({
    Key? key,
    required this.upperText,
    required this.lowerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upperText,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        Text(
          lowerText,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 144, 140, 188),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
