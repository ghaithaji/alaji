
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme {

  static const bgColor = Color(0xFF212332);
  static const secondaryColor = Color(0xFF2A2D3E);
  static const darkColor3 = Color(0xFF2b4c5d);
  static const darkColor4 = Color(0xFF6A8595);
  static const darkColor5 = Color(0xFFa1afba);

  static const ColorHome = Color(0xFF2c6975);
  static const bottom = Color(0xFF6bb2a0);
  static const card = Color(0xFFcde0c9);
  static const Color back = Color(0xFFe0ecde);
  static const Color back1 = Color(0xFFffffff);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // canvasColor: bottom,  // لون اضافي // Theme.of(context).canvasColor
    disabledColor: bottom,//Theme.of(context).disabledColor
    indicatorColor: back,
    focusColor: card,//Theme.of(context).focusColor
    textTheme: lightTextTheme,
    cardColor: back1,//Theme.of(context).cardColor
    scaffoldBackgroundColor: AppTheme.back1, // لون خلفية حائط التطبيق
    primaryColor: ColorHome, // لون Theme.of(context).primaryColor  appbar
    iconTheme: const IconThemeData(color:back,opacity: 0.8), // لون ايقون
  );

  //Theme.of(context).primaryColor

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    disabledColor: darkColor3,
    indicatorColor: darkColor4,
    focusColor: darkColor4,
    textTheme: darkTextTheme,
    cardColor: secondaryColor,
    scaffoldBackgroundColor: AppTheme.bgColor,
    primaryColor: secondaryColor, // لون appbar
    iconTheme: const IconThemeData(color:Colors.white,opacity: 0.8),
  );


  static final TextTheme lightTextTheme = TextTheme(
    button: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFF9314),
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF2D2D2D),
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF959595),
    ),
  );
//style: Theme.of(context).textTheme.bodyText2  // اختيار text
  static final TextTheme darkTextTheme = TextTheme(
    button: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFF9314),
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF959595),
    ),
  );



}
