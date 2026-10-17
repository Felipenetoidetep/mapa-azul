
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color verde = Color(0xFF176B57);
  static const Color azul = Color(0xFF176B87);
  static const Color fundo = Color(0xFFF4F8F6);
  static const Color texto = Color(0xFF203D32);

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      colorScheme: ColorScheme.fromSeed(
        seedColor: verde,
        primary: verde,
        secondary: azul,
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: fundo,
      appBarTheme: const AppBarTheme(
        backgroundColor: fundo,
        foregroundColor: texto,
        elevation: 0,
        centerTitle: false,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: Color(0xFFDCE9E2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: Color(0xFFDCE9E2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: verde, width: 2),
        ),
      ),
    );
  }
}
