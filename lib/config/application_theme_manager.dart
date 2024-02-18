import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffb7935f);
  static const Color primaryDarkColor = Color(0xff141a2e);
  static const Color onPrimaryDarkColor = Color(0xfffacc1d);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff242424),
        selectedLabelStyle: TextStyle(
          color: Color(0xff242424),
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 17,
        ),
        selectedIconTheme: IconThemeData(
          color: Color(0xff242424),
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 13,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w600,
          fontSize: 30,
        ),
        bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
        bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ));
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: onPrimaryDarkColor,
      ),
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        color: onPrimaryDarkColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: onPrimaryDarkColor,
      selectedLabelStyle: TextStyle(
        color: onPrimaryDarkColor,
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 17,
      ),
      selectedIconTheme: IconThemeData(
        color: onPrimaryDarkColor,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 13,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.w600,
        fontSize: 30,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    dividerColor: onPrimaryDarkColor,
  );
}
