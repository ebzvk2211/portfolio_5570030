import 'package:flutter/material.dart';
import '../main.dart'; // Für Zugriff auf MyApp.toggleDarkMode()

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool newsletter = false;
  bool updates = false;
  bool darkMode = false;
  bool offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              title: const Text('Newsletter abonnieren'),
              value: newsletter,
              onChanged: (value) {
                setState(() {
                  newsletter = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Benachrichtigungen aktivieren'),
              value: updates,
              onChanged: (value) {
                setState(() {
                  updates = value ?? false;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                  MyApp.toggleDarkMode(value); // Globales Umschalten
                });
              },
            ),
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: offlineMode,
              onChanged: (value) {
                setState(() {
                  offlineMode = value;
                });
              },
            ),
            const Divider(height: 32),
            Text(
              'Aktuelle Auswahl:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Newsletter: ${newsletter ? "Ja" : "Nein"}\n'
              'Benachrichtigungen: ${updates ? "Ja" : "Nein"}\n'
              'Dunkler Modus: ${darkMode ? "An" : "Aus"}\n'
              'Offline-Modus: ${offlineMode ? "An" : "Aus"}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}