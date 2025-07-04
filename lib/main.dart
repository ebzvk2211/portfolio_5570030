import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';
import 'contact_page.dart'; // musst du noch anlegen
import 'homepage.dart'; // musst du noch anlegen
import 'work_page.dart'; // musst du noch anlegen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mein Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/work': (context) => const WorkPage(),
        '/about': (context) => const SummaryPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}