import 'package:flutter/material.dart';
import 'pages/slider_page.dart';
import 'pages/profile_form_page.dart';
import 'pages/settings_page.dart';
import 'pages/summary_page.dart';
import 'pages/contact_page.dart';
import 'pages/home_page.dart';
import 'pages/work_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mein Portfolio',
      debugShowCheckedModeBanner: false, 
    theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFFDDD1CB), // weiche Buttonfarbe als Basis
    brightness: Brightness.light,
    primary: Color(0xFFDDD1CB), // AppBar & Buttons
    primaryContainer: Color(0xFFE6DCD6), // heller für z. B. Hover
    secondary: Color(0xFF4A4A4A), // Dunkelgrau für Icons/Text
    background: Color(0xFFE9DDC3), // Hintergrundfarbe (sehr hell)
    surface: Colors.white,
    onPrimary: Colors.black, // Text auf Buttons/AppBar
    onSecondary: Colors.black,
    onBackground: Colors.black,
    onSurface: Colors.black,
  ),
  scaffoldBackgroundColor: Color(0xFFE9DDC3),
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFDDD1CB), // Buttonfarbe
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 16),
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/work': (context) => const WorkPage(),
        '/about': (context) => const SummaryPage(
          name: 'Elisabeth Bezverkha',
          email: 'elisabeth.bezverkha@outlook.de',
          about: 'Ich bin Studentin der Wirtschaftsinformatik und liebe moderne UI-Entwicklung.',
          sliderValue: 75,
          newsletter: true,
          darkMode: false,
        ),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}