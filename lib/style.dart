import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// style for text
TextStyle navTitleStyle = GoogleFonts.montserrat(
  color: const Color(0xff4F4F4F),
  fontWeight: FontWeight.w700,
  fontSize: 16.5,
);

TextStyle h1 = GoogleFonts.playfairDisplay(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 31.25,
);
TextStyle h2 = GoogleFonts.playfairDisplay(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 25,
);

TextStyle h3 = GoogleFonts.playfairDisplay(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 20,
);

TextStyle h6PlayFailDisplay = GoogleFonts.playfairDisplay(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 16,
);
TextStyle h5Montserrat = GoogleFonts.montserrat(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 20,
);
TextStyle h6Montserrat = GoogleFonts.montserrat(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 16,
);

TextStyle bodyLarge = GoogleFonts.montserrat(
  color: Colors.black,
  fontWeight: FontWeight.w400,
  fontSize: 16,
);

TextStyle bodySmall = GoogleFonts.montserrat(
  color: Colors.black,
  fontWeight: FontWeight.w400,
  fontSize: 12,
);

TextStyle priceStyle = GoogleFonts.montserrat(
  color: Color(0xffD96F6E),
  fontWeight: FontWeight.w600,
  fontSize: 12,
);

// gradient

List linearGradient = [
  const LinearGradient(colors: [Color(0xffD96F6E), Color(0xffF2D05C)])
      .createShader(const Rect.fromLTWH(10.0, 0.0, 200.0, 0.0)),
  const LinearGradient(
    colors: [Color(0xff53889D), Color(0xffBBD1D9)],
  ),
  const LinearGradient(
    colors: [Color(0xffBBD1D9), Color(0xffF2D05C)],
  ),
  const LinearGradient(
    colors: [Color(0xffF2D05C), Color(0xffF3A492)],
  ),
  const LinearGradient(
    colors: [Color(0xffF3A492), Color(0xffD96F6E)],
  ),
  const LinearGradient(
    colors: [Color(0xffD96F6E), Color(0xffF2D05C)],
  ),
];
