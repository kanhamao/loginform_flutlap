// ignore: file_names
import 'package:flutter/material.dart';

class ResetPwd extends StatelessWidget {
  const ResetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top image
            Image.asset(
              'assets/images/resetpwd.png',
              height: 50,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 120,
                  child: Center(child: Text('Image not found')),
                );
              },
            ),
            const SizedBox(height: 20),

            // Instruction text
            const Text(
              'Enter the email associated with your account and we\'ll send an email to reset your password.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Email input
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),

            // Send Verification Code button (modern style)
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Send verification code logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // required for gradient
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Send Verification Code',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Back to login
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to login',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
