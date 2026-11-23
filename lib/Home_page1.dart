import 'package:flutter/material.dart';

import 'Home_page2.dart';
import 'planet_details.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

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

                // Earth Image
                Positioned(
                  top: 278 * s,
                  left: (w - 342 * s) / 2,
                  width: 342 * s,
                  height: 339 * s,
                  child: Image.asset('assets/Earth.png', fit: BoxFit.contain),
                ),

                // Left Arrow - Back
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

                // Earth Name
                Positioned(
                  top: 640 * s,
                  left: (w - 125) / 2,
                  width: 125,
                  height: 44 * s,
                  child: const Center(
                    child: Text(
                      'Earth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Right Arrow - Mercury
                Positioned(
                  top: 640 * s,
                  right: 16,
                  width: 44 * s,
                  height: 44 * s,
                  child: IconButton.filled(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage2(),
                        ),
                      );
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                    ),
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),

                // Explore Earth Button
                Positioned(
                  bottom: 16,
                  left: 16,
                  width: w - 32,
                  height: 60 * s,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PlanetDetails(planet: 'Earth'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Explore Earth', style: TextStyle(fontSize: 18)),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
