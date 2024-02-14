import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffb7935f);
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
      ));
}
