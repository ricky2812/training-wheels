import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.yellow,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.white24,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
      titleTextStyle: Theme.of(context).textTheme.headline6,
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.red,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
      titleTextStyle: Theme.of(context).textTheme.headline6,
    ),
  );

}