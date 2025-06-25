import 'package:flutter/material.dart';
import 'package:group_study_flutter/screens/user_register_screen.dart';
import 'package:group_study_flutter/styles/theme_style.dart';
import 'package:group_study_flutter/widgets/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F0FB), // pastel lavender
      body: Center(
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withAlpha(50),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFFEDEDED),
                child: Icon(Icons.person, size: 60, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              MyTextField(
                hintText: "Your Name",
                controller: TextEditingController(),
                prefixIcon: Icon(Icons.person),
              ),
              const SizedBox(height: 16),
              MyTextField(
                hintText: "Password",
                controller: TextEditingController(),
                prefixIcon: const Icon(Icons.lock_outline),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pastelColorScheme.primary, // lavender button
                  foregroundColor: pastelColorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                ),
                child: const Text('Login', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  // Handle register navigation
                  Navigator.pushNamed(context,
                    '/register-user-screen',
                    
                  );
                },
                child: const Text(
                  "Don't have an account? Register",
                  style: TextStyle(
                    color: Color(0xFF8C7CF0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
