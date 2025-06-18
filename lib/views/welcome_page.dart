import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  final String email; // Email passed from login page
  const WelcomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'), // Page title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content
          children: [
            // Welcome message
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Spacer
            // Display logged in email
            Text(
              'Logged in as: $email',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30), // Larger spacer
            // Logout button
            ElevatedButton(
              onPressed: () {
                // Return to login page
                Navigator.pop(context);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}