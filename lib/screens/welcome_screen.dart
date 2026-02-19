import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const PlantPulseApp());
}

class PlantPulseApp extends StatelessWidget {
  const PlantPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlantPulse',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const WelcomeScreen(),
    );
  }
}
