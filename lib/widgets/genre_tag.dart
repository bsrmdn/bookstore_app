import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookstore_app/style.dart';

class GenreTag extends StatelessWidget {
  int gradientOption;
  String genreName;

  GenreTag({required this.gradientOption, required this.genreName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      decoration: BoxDecoration(
          gradient: linearGradient[gradientOption],
          borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          genreName,
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
