import 'package:flutter/material.dart';

import 'Home_page1.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // =========================
        // BACKGROUND IMAGE
        // =========================
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Login.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // =========================
              // EXPLORE THE UNIVERSE TEXT
              // =========================
              const Positioned(
                left: 16,
                top: 220,
                width: 265,
                height: 174,
                child: Text(
                  'Explore\nThe\nUniverse',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
              ),

              // =========================
              // EXPLORE BUTTON
              // =========================
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: 342,
                    height: 60,
                    child: ElevatedButton(
                      // =========================
                      // NAVIGATE TO HOME PAGE
                      // =========================
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage1(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE403D),
                        foregroundColor: const Color(0xFFFFFFFF),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),

                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // BUTTON TEXT
                          Text(
                            'Explore',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          // ARROW ICON
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFFFFFFF),
                            size: 24,
                          ),
                        ],
                      ),
                    ),
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
