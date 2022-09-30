import 'package:flutter/material.dart';
import 'package:flutter_thirty_days/globals/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: AppColors.blue,
        backgroundColor: AppColors.backGround,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
            color: AppColors.primaryColor,
            elevation: 0,
            iconTheme: IconThemeData(color: AppColors.white)),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          headline4: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w300),
          headline5: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal),
        ),
      );
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
