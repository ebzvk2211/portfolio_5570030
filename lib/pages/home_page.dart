import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';
import 'app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primaryContainer,
        foregroundColor: theme.colorScheme.onPrimaryContainer,
        centerTitle: true,
        title: const Text(
          'Elisabeth Bezverkha',
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
      drawer: AppDrawer(), // ✅ const entfernt
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildNavButton(
              context,
              label: 'Quiz',
              page: const SliderPage(),
            ),
            const SizedBox(height: 16),
            _buildNavButton(
              context,
              label: 'Kontakt Formular',
              page: const ProfileFormPage(),
            ),
            const SizedBox(height: 16),
            _buildNavButton(
              context,
              label: 'Einstellungen',
              page: const SettingsPage(),
            ),
            const SizedBox(height: 16),
            _buildNavButton(
              context,
              label: 'Ihre Anfragen',
              page: const SummaryPage(
                name: 'Max Muster',
                email: 'max@muster.de',
                about: 'Demo-Nutzer',
                sliderValue: 42,
                newsletter: true,
                darkMode: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context,
      {required String label, required Widget page}) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        foregroundColor: theme.colorScheme.onPrimaryContainer,
        padding: const EdgeInsets.symmetric(vertical: 14),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Text(label),
    );
  }
}