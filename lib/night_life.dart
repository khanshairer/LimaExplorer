import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: Night()));
}

class Night extends StatefulWidget {
  const Night({super.key});

  @override
  State<Night> createState() => _NightState();
}

class _NightState extends State<Night> {
  final List<Map<String, String>> imageData = [
    {
      'path': 'assets/night_life/lima_mall_cliff.png',
      'label': 'Lima Mall Cliff',
    },
    {
      'path': 'assets/night_life/magic_water_park.png',
      'label': 'Colorful Water Show',
    },
    {
      'path': 'assets/night_life/parrot_shadow_bar.png',
      'label': 'Parrot Shadow Cocktail Bar',
    },
    {
      'path': 'assets/night_life/barranco_night_life.png',
      'label': 'Explore Barranco Downtown',
    },
    {
      'path': 'assets/night_life/del_carajo_night_club.png',
      'label': 'Del Carajo Night Club',
    },
    {'path': 'assets/night_life/lima_pub_crawl.png', 'label': 'Lima Pub Crawl'},
  ];

  final List<String> limaHighlights = [
    "Larcomar is an upscale shopping and entertainment center built into the cliffs of Miraflores, overlooking the Pacific Ocean. With panoramic ocean views, it houses international stores, gourmet restaurants, a cinema, and cafes. It's a favorite for tourists and locals seeking a scenic and relaxing shopping experience, especially at sunset. The cliffside architecture and vibrant ambiance make it a must-visit in Lima.",
    "The Magic Water Circuit in Lima's Parque de la Reserva is a dazzling night attraction featuring 13 illuminated fountains. These choreographed water displays combine lights, music, and laser projections, offering a unique sensory experience. Ideal for families and couples, the show reflects Peru's heritage and creativity in a dynamic, visually stunning format that earned it a Guinness World Record.",
    "The Parrot Shadow Rum Bar & Tiki Cocktails is a stylish, tropical-themed bar in San Isidro, Lima. Known for its vast rum selection and expertly crafted cocktails, it delivers a Polynesian escape with bamboo décor, warm lighting, and exotic drinks. It's a top spot for rum lovers and those seeking a vibrant, immersive nightlife experience with tiki flair.",
    "Barranco is Lima's bohemian district, famous for its eclectic nightlife, colonial architecture, and street art. At night, its cobbled streets come alive with music, dance, and people spilling from live-music bars, craft breweries, and romantic cafés. Places like Ayahuasca and La Noche are iconic. The relaxed, artsy vibe makes Barranco perfect for an unforgettable cultural night out.",
    "Del Carajo is a lively peña and nightclub in Barranco known for showcasing traditional Peruvian music and dance. It features high-energy performances with live Afro-Peruvian drums, marinera, and festejo dances. Guests dine and drink while immersed in the cultural spectacle. It's festive, loud, and perfect for those wanting to explore Peru's folkloric roots in a fun setting.",
    "Lima's Pub Crawl tours offer an exciting way to explore the city's nightlife, especially in Miraflores and Barranco. These guided events take you through multiple bars and a club, with welcome shots, games, and skip-the-line access. Great for solo travelers and groups, the pub crawl connects locals and tourists in a safe, social atmosphere packed with dancing and fun.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nightlife Explorer",
          style: GoogleFonts.dancingScript(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.amber[200],
          ),
        ),
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Title stays outside the ListView
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Nightlife Adventures',
                  style: GoogleFonts.dancingScript(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed to match background
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // ListView takes the remaining space
            Expanded(
              child: ListView.builder(
                itemCount: imageData.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(
                            imageData[index]['path']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 12.0,
                          ),
                          child: Text(
                            imageData[index]['label']!,
                            style: GoogleFonts.dancingScript(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          child: Text(
                            limaHighlights[index],
                            style: GoogleFonts.raleway(
                              fontSize: 18,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
