import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Illustration
            SizedBox(
              height: 200,
              child: Image.network(
                'https://via.placeholder.com/150', // Replace with the real illustration URL
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            // Welcome text
            const Text(
              'Hello',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome to Sign Language Recognition App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 15),
            // Sign Up Button
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Register');
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: const BorderSide(color: Colors.blue),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 30),
            // Social Sign Up Text
            const Text(
              'Sign up using',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 15),
            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  onPressed: () {
                    // Handle Facebook sign up
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.g_translate, color: Colors.red),
                  onPressed: () {
                    // Handle Google sign up
                  },
                ),
                /*
                IconButton(
                  icon: const Icon(Icons.linkedin, color: Colors.blue),
                  onPressed: () {
                    // Handle LinkedIn sign up
                  },
                ),
                */
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
