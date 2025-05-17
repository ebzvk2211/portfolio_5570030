import 'package:flutter/material.dart';
import 'pages/slider_page.dart'; // ←  Import meiner neuen Seite
import 'pages/profile_form_page.dart';
import 'pages/settings_page.dart';
import 'pages/profile_form_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileFormPage(), // ← Start mit der Slider-Seite nicht mit der Homepage
    );
  }
}