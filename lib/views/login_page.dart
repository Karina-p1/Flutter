import 'package:flutter/material.dart';
import 'welcome_page.dart';

// LoginPage is a StatefulWidget that manages user login
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Form key for form validation
  final _formKey = GlobalKey<FormState>();

  // Controllers for email and password text fields
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up controllers when widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Login function that validates credentials
  void _login() {
    // First validate the form
    if (_formKey.currentState!.validate()) {
      // Check if credentials match test values
      if (_emailController.text == 'user@user.com' &&
          _passwordController.text == '12345678') {
        // Navigate to WelcomePage on successful login
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomePage(email: _emailController.text),
          ),
        );
      } else {
        // Show error message for invalid credentials
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid credentials')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding around all content
        child: Form(
          key: _formKey, // Assign the form key
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.start, // Align left
            children: [
              // Header section
              const Text(
                'Let\'s Sign you in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10), // Spacer

              // Welcome message
              const Text(
                'Welcome Back,',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'You have been missed',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30), // Larger spacer

              // Email input field
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email, phone & username',
                  border: OutlineInputBorder(), // Styled border
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20), // Spacer

              // Password input field
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Hide password characters
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Forgot password link (aligned to right)
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Implement forgot password functionality
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Sign in button (full width)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue background
                    foregroundColor: Colors.white, // White text
                    padding: const EdgeInsets.symmetric(vertical: 16), // Taller button
                  ),
                  onPressed: _login, // Calls login function
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(height: 30),

              // Divider with "or" in middle
              const Row(
                children: [
                  Expanded(child: Divider()), // Left divider
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(child: Divider()), // Right divider
                ],
              ),
              const SizedBox(height: 20),

              // Social login prompt text
              const Text(
                'Sign in with',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),

              // Social login buttons row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google button (using 'G' text)
                  IconButton(
                    icon: const Text('G',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto')),
                    color: Colors.red, // Google brand color
                    onPressed: () {
                      // TODO: Implement Google sign in
                    },
                  ),
                  const SizedBox(width: 20),

                  // Facebook button (using 'f' text)
                  IconButton(
                    icon: const Text('f',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto')),
                    color: Colors.blue[800], // Facebook brand color
                    onPressed: () {
                      // TODO: Implement Facebook sign in
                    },
                  ),
                  const SizedBox(width: 20),

                  // Twitter button (using '𝕏' character)
                  IconButton(
                    icon: const Text('𝕏', // Twitter/X logo
                        style: TextStyle(fontSize: 24)),
                    color: Colors.black, // Twitter brand color
                    onPressed: () {
                      // TODO: Implement Twitter sign in
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Registration prompt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      // TODO: Implement navigation to registration
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}