import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: Adventure()));
}

class Adventure extends StatefulWidget {
  const Adventure({super.key});

  @override
  State<Adventure> createState() => _AdventureState();
}

class _AdventureState extends State<Adventure> {
  final List<Map<String, String>> adventureData = [
    {'path': 'assets/adventures/huacachina.jpg', 'label': 'Huacachina Oasis'},
    {
      'path': 'assets/adventures/miraFlores.jpg',
      'label': 'Miraflores District',
    },
    {
      'path': 'assets/adventures/paragliding_costa_verde.jpeg',
      'label': 'Paragliding Costa Verde',
    },
    {
      'path': 'assets/adventures/marcahuasi_stone_forest.jpeg',
      'label': 'Marcahuasi Stone Forest',
    },
    {
      'path': 'assets/adventures/penguin_Ballestas_island.jpeg',
      'label': 'Ballestas Islands Penguins',
    },
    {
      'path': 'assets/adventures/parque_de_las_aguas.jpeg',
      'label': 'Parque de las Aguas',
    },
    {'path': 'assets/adventures/buffalo.jpg', 'label': 'Park of Legends'},
  ];

  final List<String> limaOutdoorAdventures = [
    "Huacachina is a surreal desert oasis located about 5 hours south of Lima. Surrounded by towering sand dunes, the emerald lagoon offers a striking contrast to the arid landscape. Adventure seekers can ride dune buggies at high speed or go sandboarding down steep slopes. The sunsets are breathtaking, and the small village around the oasis is perfect for relaxing after a thrilling day.",
    "A bike tour through Miraflores is one of the best ways to explore Lima's coastal beauty and urban charm. Riders cruise along the Malecón, a clifftop path offering panoramic ocean views, through parks like Parque del Amor and Larcomar. The route often extends to Barranco, with stops for photos, history, and culture. It's safe, scenic, and ideal for all fitness levels.",
    "Soar above Lima's coastline with paragliding flights from the cliffs of Costa Verde. Departing from Parque Raimondi in Miraflores, these tandem flights offer spectacular aerial views of the Pacific Ocean, high-rises, and surfers below. Guided by professional pilots, the experience is safe, exhilarating, and unforgettable for thrill-seekers visiting the city.",
    "Marcahuasi is a mystical stone forest located about 4 hours east of Lima at over 4,000 meters elevation. This plateau is dotted with massive rock formations resembling human faces, animals, and mythological figures. Ideal for hiking and camping, Marcahuasi also offers stunning stargazing due to its high altitude and remote location. It's perfect for nature lovers and spiritual adventurers alike.",
    "Often called 'the poor man's Galápagos', the Ballestas Islands near Paracas (3.5 hours from Lima) offer close-up views of marine wildlife like Humboldt penguins, sea lions, dolphins, and thousands of seabirds. Boat tours pass the mysterious Candelabra geoglyph before circling the rocky islets. It's an unforgettable experience for wildlife and photography enthusiasts.",
    "The Magic Water Circuit at Parque de la Reserva is one of Lima's top attractions. It features 13 choreographed water fountains that light up at night in sync with music and projections. Kids can splash in interactive fountains, while adults enjoy a romantic stroll under illuminated arches. It's a magical, family-friendly outdoor adventure in the heart of the city.",
    "Lima's Parque de las Leyendas is more than a zoo—it's a cultural park combining wildlife, archaeology, and botanical gardens. It houses native species like Andean condors, jaguars, and vicuñas, along with a replica of ancient ruins. Spread across 3 eco-zones (coast, highlands, jungle), it's an educational and family-friendly escape from the urban bustle.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adventure Explorer",
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
                  'Wilderness Exploration',
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
                itemCount: adventureData.length,
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
                            adventureData[index]['path']!,
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
                            adventureData[index]['label']!,
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
                            limaOutdoorAdventures[index],
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
