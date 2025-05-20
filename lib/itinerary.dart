import 'package:flutter/material.dart';
import 'adventure.dart';
import 'historical.dart';
import 'foods.dart';
import 'night_life.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Itinerary());
}

class Itinerary extends StatefulWidget {
  const Itinerary({super.key});

  @override
  State<Itinerary> createState() => _ItineraryState();
}

class _ItineraryState extends State<Itinerary> {
  final List<Map<String, String>> imageData = [
    {
      'path': 'assets/homepage/Adventures.jpg',
      'label': 'Adventures Enthusiast',
    },
    {
      'path': 'assets/homepage/HistoricalPlaces.jpg',
      'label': 'History Affectionates',
    },
    {'path': 'assets/homepage/Foods.jpg', 'label': 'Culinary Delights'},
    {'path': 'assets/homepage/NightLife.jpg', 'label': 'Nightlife Lovers'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Your Itinerary",
          style: GoogleFonts.dancingScript(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.amber[200],
          ),
        ),
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Column(
        children: [
          // First row with two images
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildImageItem(0)),
                Expanded(child: _buildImageItem(1)),
              ],
            ),
          ),
          // Second row with two images
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildImageItem(2)),
                Expanded(child: _buildImageItem(3)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Adventure()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Historical()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Foods()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Night()),
            );
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                imageData[index]['path']!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                bottom: 20,
                child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000).withOpacity(0.5),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    imageData[index]['label']!,
                    style: GoogleFonts.greatVibes(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 247, 243, 4),
                      letterSpacing: 1.8,
                      shadows: [
                        Shadow(
                          color: Colors.deepPurple.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(2, 2),
                        ),
                      ],
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
