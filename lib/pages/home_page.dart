import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
    backgroundColor: const Color(0xFFFFE0B2),
    foregroundColor: const Color(0xFFFB8C00),
    title: const Text(
      'Startseite',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            offset: Offset(1.5, 1.5),
            blurRadius: 3.0,
            color: Color.fromARGB(120, 0, 0, 0),
          ),
        ],
      ),
    ),
  ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
               style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFE0B2), // helles Orange
              foregroundColor: const Color(0xFFFB8C00), // Schrift: kräftiges Orange
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              child: const Text('Slider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SliderPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
               backgroundColor: const Color(0xFFFFE0B2), // helles Orange
               foregroundColor: const Color(0xFFFB8C00), // Schrift: kräftiges Orange
               padding: const EdgeInsets.symmetric(vertical: 14),
               textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              child: const Text('Formular'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfileFormPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton( style: ElevatedButton.styleFrom(
             backgroundColor: const Color(0xFFFFE0B2), // helles Orange
             foregroundColor: const Color(0xFFFB8C00), // Schrift: kräftiges Orange
             padding: const EdgeInsets.symmetric(vertical: 14),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
             ),
              child: const Text('Einstellungen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
               backgroundColor: const Color(0xFFFFE0B2), // helles Orange
               foregroundColor: const Color(0xFFFB8C00), // Schrift: kräftiges Orange
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              child: const Text('Zusammenfassung'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SummaryPage(
                      name: 'Max Muster',
                      email: 'max@muster.de',
                      about: 'Demo-Nutzer',
                      sliderValue: 42,
                      newsletter: true,
                      darkMode: false,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}