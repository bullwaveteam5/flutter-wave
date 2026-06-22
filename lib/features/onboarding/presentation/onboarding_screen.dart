import 'package:flutter/material.dart';

import '../../login/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      "title": "Book Rides Easily",
      "subtitle": "Find rides instantly and travel anywhere."
    },
    {
      "title": "Safe & Secure",
      "subtitle": "Verified drivers and live ride tracking."
    },
    {
      "title": "Fast Payments",
      "subtitle": "Pay seamlessly with multiple options."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 150, 38),
      body: SafeArea(
        child: Column(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                // onPressed: () {},

onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    ),
  );
},

                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Icon(
                          Icons.directions_car,
                          size: 120,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 40),

                        Text(
                          pages[index]["title"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          pages[index]["subtitle"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: currentPage == index ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                 onPressed: () {
  if (currentPage < pages.length - 1) {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  } else {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
},
                  child: Text(
                    currentPage == pages.length - 1
                        ? "Get Started"
                        : "Next",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}