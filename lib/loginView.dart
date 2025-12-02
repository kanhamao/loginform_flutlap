// ignore: file_names
import 'package:flutter/material.dart';
import 'resetPwd.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool rememberMe = false; // track checkbox state

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Load the image at runtime via Image.asset (DO NOT import the file)
          Image.asset(
            'assets/images/image.png', // path to your image
            height: 100,
            errorBuilder: (context, error, stackTrace) {
              return const SizedBox(
                height: 100,
                child: Center(child: Text('Image not found')),
              );
            },
          ),
          const SizedBox(height: 20),

          const TextField(
            decoration: InputDecoration(
              labelText: 'Email or Mobile Number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    rememberMe = !rememberMe;
                  });
                },
                child: Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                    const Text('Remember me'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ResetPwd()),
                  );
                },
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
