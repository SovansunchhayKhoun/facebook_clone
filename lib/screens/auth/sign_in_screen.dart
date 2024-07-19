import 'package:flutter/material.dart';
import 'package:project/screens/auth/forgot_password.dart';
import 'package:project/screens/layout_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isLoading = false;

  Future<void> _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate a network call
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });

    // Navigate to HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LayoutScreen()),
    );
  }

  Widget _buildTextField({
    required String hintText,
    bool obscureText = false,
  }) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: Colors.grey[1],
      ),
    );
  }

  Widget _buildElevatedButton({
    required String text,
    required VoidCallback? onPressed,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: _isLoading && color == Colors.blue
          ? const CircularProgressIndicator(color: Colors.white)
          : Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 100, bottom: 16.0, left: 16.0, right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              _buildTextField(hintText: 'Mobile number or email address'),
              const SizedBox(height: 16),
              _buildTextField(hintText: 'Password', obscureText: true),
              const SizedBox(height: 16),
              _buildElevatedButton(
                text: 'Log In',
                onPressed: _isLoading
                    ? null
                    : () {
                        _handleLogin();
                      },
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()),
                  );
                },
                child: const Text(
                  'Forgotten password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 16),
              _buildElevatedButton(
                text: 'Create New Account',
                onPressed: () {
                  // Handle create new account
                },
                color: Colors.green,
              ),
              const Spacer(),
              const Text(
                'About • Help • More',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'Meta © 2024',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
