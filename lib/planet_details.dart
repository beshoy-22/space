import 'package:flutter/material.dart';

class PlanetDetails extends StatelessWidget {
  final String planet;

  const PlanetDetails({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    bool isEarth = planet == 'Earth';

    String title = isEarth
        ? 'Earth: Our Blue Marble'
        : 'Mercury: The Swiftest Planet';

    String image = isEarth ? 'assets/earth 2.png' : 'assets/mercury.png';

    String about = isEarth
        ? 'Earth is the only known planet in the universe '
              'that supports life. Its unique combination of '
              'factors, including liquid water, a breathable '
              'atmosphere, and a suitable distance from the Sun, '
              'has created the ideal conditions for the development '
              'of complex organisms. Earth\'s magnetic field '
              'protects it from harmful solar radiation, and '
              'its atmosphere helps to regulate temperature '
              'and weather patterns.'
        : 'Mercury is the smallest planet in our solar system '
              'and the closest planet to the Sun. It has a rocky '
              'surface covered with craters and a very thin '
              'exosphere. Temperatures change dramatically '
              'between day and night.';

    String information = isEarth
        ? 'Distance from Sun (km): 149598026\n\n'
              'Length of Day (hours): 23.93\n\n'
              'Orbital Period (Earth years): 1\n\n'
              'Radius (km): 6371\n\n'
              'Mass (kg): 5.972 × 10²⁴\n\n'
              'Gravity (m/s²): 9.81\n\n'
              'Surface Area (km²): 5.10 × 10⁸'
        : 'Distance from Sun (km): 57909227\n\n'
              'Length of Solar Day (hours): 4222.6\n\n'
              'Orbital Period (Earth years): 0.24\n\n'
              'Radius (km): 2439.7\n\n'
              'Mass (kg): 3.301 × 10²³\n\n'
              'Gravity (m/s²): 3.7\n\n'
              'Surface Area (km²): 7.48 × 10⁷';

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
        child: ListView(
          children: [
            // Top Background
            SizedBox(
              width: double.infinity,
              height: 125,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/Home_top.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Back Button
                  Positioned(
                    top: 16,
                    left: 16,
                    width: 44,
                    height: 44,
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

                  // Planet Name
                  Positioned(
                    top: 23,
                    left: 65,
                    right: 65,
                    height: 35,
                    child: Center(
                      child: Text(
                        planet,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Planet Title
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Planet Image
            Center(
              child: Image.asset(
                image,
                width: 300,
                height: 280,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 300,
                    height: 280,
                    child: Icon(Icons.public, color: Colors.white, size: 100),
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            // About
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // About Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                about,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Planet Information
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                information,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
