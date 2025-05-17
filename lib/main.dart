import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // sicherstellen, dass diese Datei existiert und korrekt ist

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}