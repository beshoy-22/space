import 'package:flutter/material.dart';

import 'planet_details.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, size) {
            double w = size.maxWidth;
            double h = size.maxHeight;
            double s = h / 812;

            return Stack(
              children: [
                // Background
                Positioned(
                  top: 0,
                  left: 0,
                  width: w,
                  height: 237 * s,
                  child: Image.asset('assets/Home_top.png', fit: BoxFit.cover),
                ),

                // Title
                Positioned(
                  top: 25 * s,
                  left: 0,
                  width: w,
                  height: 35 * s,
                  child: const Center(
                    child: Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Question
                Positioned(
                  top: 173 * s,
                  left: 16,
                  width: w - 32,
                  height: 75 * s,
                  child: const Text(
                    'Which planet\nwould you like to explore?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Mercury Image
                Positioned(
                  top: 325 * s,
                  left: (w - 375 * s) / 2,
                  width: 375 * s,
                  height: 237 * s,
                  child: Image.asset(
                    'assets/earth 1.png',
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.public,
                          size: 100,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),

                // Left Arrow - Earth
                Positioned(
                  top: 640 * s,
                  left: 16,
                  width: 44 * s,
                  height: 44 * s,
                  child: IconButton.filled(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                    ),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),

                // Mercury Name
                Positioned(
                  top: 640 * s,
                  left: (w - 125) / 2,
                  width: 125,
                  height: 44 * s,
                  child: const Center(
                    child: Text(
                      'Mercury',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Right Arrow - Earth
                Positioned(
                  top: 640 * s,
                  right: 16,
                  width: 44 * s,
                  height: 44 * s,
                  child: IconButton.filled(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                    ),
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),

                // Explore Mercury Button
              ],
            );
          },
        ),
      ),
    );
  }
}
