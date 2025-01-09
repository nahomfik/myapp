import 'package:flutter/material.dart';
import 'motivational_quotes_screen.dart';
import 'journal_screen.dart';
import 'mental_exercises_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Space',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(), // Start with the HomeScreen
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Safe Space'),
        actions: [
          // Support/Help button in the AppBar
          IconButton(
            icon: const Icon(Icons.help_outline), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SupportHelpScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MotivationalQuotesScreen()),
                );
              },
              child: const Text('Motivational Quotes'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Journal Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JournalScreen()),
                );
              },
              child: const Text('Journal'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to About Us Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutUsScreen()),
                );
              },
              child: const Text('About Us'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Settings Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
              child: const Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Mental Exercises Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MentalExercisesScreen()),
                );
              },
              child: const Text('Mental Exercises'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Center(
        child: Text('About Us Content'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Settings Content'),
      ),
    );
  }
}
