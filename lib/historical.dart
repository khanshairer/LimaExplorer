import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: Historical()));
}

class Historical extends StatefulWidget {
  const Historical({super.key});

  @override
  State<Historical> createState() => _HistoricalState();
}

class _HistoricalState extends State<Historical> {
  final List<Map<String, String>> imageData = [
    {
      'path': 'assets/historical/lima_main_square.jpeg',
      'label': 'Lima Main Square',
    },
    {
      'path': 'assets/historical/hermosa_fotografia.jpeg',
      'label': 'Plaza de Armas',
    },
    {
      'path': 'assets/historical/metropolitan_cathedral.jpeg',
      'label': 'Metropolitan Cathedral',
    },
    {'path': 'assets/historical/old_town.jpeg', 'label': 'Historic Old Town'},
    {
      'path': 'assets/historical/temple_of_pachacamac.jpeg',
      'label': 'Pachacamac Temple',
    },
    {
      'path': 'assets/historical/national_mueseum_lima.jpeg',
      'label': 'National Museum',
    },
  ];

  final List<String> limaHistoricalSites = [
    "The Lima Main Square (Plaza Mayor) is the historic heart of the city and the birthplace of Lima, founded by Francisco Pizarro in 1535. Surrounded by colonial-era buildings like the Government Palace, Archbishop's Palace, and City Hall, the plaza features manicured gardens and an ornate bronze fountain from the 17th century. It's a UNESCO World Heritage site and a perfect starting point to explore Lima's colonial legacy.",
    "Though not a traditional historical site, 'Hermosa Fotografía' refers to scenic photo spots across Lima—particularly in Miraflores and Barranco—where ocean views, colonial architecture, and public art merge. These spots highlight Lima's beauty through the lens of culture and creativity, making them ideal for travelers and photographers seeking striking visual memories of the city's soul and skyline.",
    "The Metropolitan Cathedral of Lima, facing Plaza Mayor, is a masterpiece of Spanish colonial architecture. Its baroque façade and neoclassical interior house chapels, artwork, and the tomb of Francisco Pizarro. The cathedral has been rebuilt multiple times due to earthquakes, yet remains a symbol of faith and history. Guided tours reveal its rich art, relics, and religious heritage.",
    "Lima's Old Town, or Centro Histórico, is a UNESCO World Heritage site filled with ornate churches, convents, mansions, and colorful balconies. Walking its cobbled streets reveals colonial-era gems like San Francisco Church, the Inquisition Museum, and picturesque courtyards. It's a cultural immersion into Peru's Spanish colonial past and vibrant street life.",
    "Located 40 km southeast of Lima, Pachacamac is an ancient archaeological complex that predates the Inca Empire. The site includes pyramids, temples, and plazas dedicated to the creator god Pachacamac. It served as a major religious pilgrimage center for centuries. Visitors can explore sun-drenched ruins and a modern museum showcasing ceramics and relics from the Lima, Wari, and Inca cultures.",
    "The Museo Nacional del Perú (MUNA), located in Lurín near Pachacamac, is the country's largest and most comprehensive museum. It showcases thousands of artifacts from Peru's rich civilizations—Nazca, Moche, Wari, Inca—alongside colonial and modern exhibits. Its sleek, contemporary architecture houses immersive exhibitions that bring Peru's 5,000-year-old cultural heritage to life. A must-visit for history enthusiasts and scholars alike.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Historical Lima",
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
                  'Cultural Heritage Sites',
                  style: GoogleFonts.dancingScript(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                            limaHistoricalSites[index],
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
