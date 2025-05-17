import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool darkMode;

  const SummaryPage({
    super.key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.darkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zusammenfassung'),
        backgroundColor: Color(0xFFB3E5FC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('👤 Name: $name'),
            Text('📧 E-Mail: $email'),
            Text('📝 Über mich: $about'),
            const SizedBox(height: 12),
            Text('📊 Slider-Wert: ${sliderValue.round()}'),
            const SizedBox(height: 12),
            Text('📬 Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('🌙 Dunkler Modus: ${darkMode ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}