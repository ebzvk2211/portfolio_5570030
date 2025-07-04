import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'settings_page.dart';
import 'profile_form_page.dart';
import 'app_drawer.dart'; // falls Drawer in externer Datei – sonst weglassen

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work'),
        backgroundColor: theme.colorScheme.primaryContainer,
        foregroundColor: theme.colorScheme.onPrimaryContainer,
      ),
      drawer: const AppDrawer(), // Navigation
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SliderPage()),
              );
            },
            child: const Text('Quiz / Slider'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsPage()),
              );
            },
            child: const Text('Einstellungen'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileFormPage()),
              );
            },
            child: const Text('Kontaktformular'),
          ),
        ],
      ),
    );
  }
}