// ignore: file_names
import 'package:flutter/material.dart';

class CreateAcc extends StatelessWidget {
  const CreateAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image at the top
            Image.asset(
              'assets/images/createacc.png',
              height: 120,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 120,
                  child: Center(child: Text('Image not found')),
                );
              },
            ),
            const SizedBox(height: 20),

            // Full Name
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Email or Mobile Number
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email or Mobile Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Create Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Create Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Confirm Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Modern Gradient Create Account Button
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
                  // Your create account logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // needed for gradient
                  shadowColor: Colors.transparent, // remove default shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Optional: Sign in link for existing users
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // go back to login
                  },
                  child: const Text('Sign in'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
