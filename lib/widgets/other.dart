import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalTask extends StatelessWidget {
  const TotalTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Text(
        "12 Tasks",
        style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 30, 24, 68),
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NameText extends StatelessWidget {
  String text;
  NameText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 50, fontWeight: FontWeight.w500),
    );
  }
}
