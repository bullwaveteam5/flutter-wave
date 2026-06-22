import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),

              // Logo
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.flutter_dash,
                  size: 40,
                  color: Color(0xFF0077BE),
                ),
              ),

              const SizedBox(height: 24),

              // App Name
              const Text(
                'WaveGo',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0077BE),
                ),
              ),

              const SizedBox(height: 8),

              // Tagline
              const Text(
                'Ride the wave of future mobility',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 40),

              // Login Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 24),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          hintText: '+91 9876543210',
                          filled: true,
                          fillColor: const Color(0xFFF5F5F5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0077BE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Text(
                            'CONTINUE WITH PHONE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                


const SizedBox(height: 24),

Row(
  children: [
    Expanded(
      child: Divider(),
    ),

    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text('OR LOGIN WITH'),
    ),

    Expanded(
      child: Divider(),
    ),
  ],
),

const SizedBox(height: 20),

Row(
  children: [
    Expanded(
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text('Google'),
        ),
      ),
    ),

    const SizedBox(width: 12),

    Expanded(
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text('Apple'),
        ),
      ),
    ),
  ],
),

const SizedBox(height: 20),

const Text(
  'By continuing you agree to WaveGo Terms of Service and Privacy Policy.',
  textAlign: TextAlign.center,
),




                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}