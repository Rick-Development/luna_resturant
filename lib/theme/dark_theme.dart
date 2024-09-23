import 'package:flutter/material.dart';
import 'package:sixam_mart_store/util/app_constants.dart';

ThemeData dark() => ThemeData(
      fontFamily: AppConstants.fontFamily,
      primaryColor: const Color(0xFF379237),
      secondaryHeaderColor: const Color(0xFF009f67),
      disabledColor: const Color(0xFF6f7275),
      brightness: Brightness.dark,
      hintColor: const Color(0xFFbebebe),
      cardColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF379237),
        ),
      ),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF379237),
        secondary: Color(0xFF379237),
      ).copyWith(
        error: const Color(0xFFdd3135),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF29292D),
        surfaceTintColor: Color(0xFF29292D),
      ),
      dialogTheme: const DialogTheme(surfaceTintColor: Colors.white10),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(500),
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.black,
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 5),
      ),
      dividerTheme: const DividerThemeData(
        thickness: 0.2,
        color: Color(0xFFA0A4A8),
      ),
    );
