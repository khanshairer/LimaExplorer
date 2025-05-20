import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: Foods()));
}

class Foods extends StatefulWidget {
  const Foods({super.key});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  final List<Map<String, String>> imageData = [
    {'path': 'assets/foods/lamar.png', 'label': 'La Mar'},
    {'path': 'assets/foods/Maido.png', 'label': 'Maido'},
    {'path': 'assets/foods/panchita.png', 'label': 'Panchita'},
    {'path': 'assets/foods/rafael.png', 'label': 'Rafhael'},
    {'path': 'assets/foods/kjolle.png', 'label': 'Kjolle'},
    {'path': 'assets/foods/estadio_fc.png', 'label': 'Estadio FC'},
    {'path': 'assets/foods/la_rosa.png', 'label': 'La Rosa Náutica'},
  ];

  final List<String> limaRestaurants = [
    "La Mar Cebichería, led by renowned chef Gastón Acurio, is Lima's most celebrated seafood restaurant. Open only for lunch, it serves world-class ceviche made with the freshest local catch, along with causas, tiraditos, and grilled octopus. The atmosphere is lively and casual, with open-air seating and a ceviche bar as its centerpiece. It's a must-visit for any seafood lover exploring Peru's coastal cuisine.",
    "Maido is Lima's acclaimed Nikkei restaurant, ranked among the best in the world. Chef Mitsuharu 'Micha' Tsumura fuses Japanese technique with bold Peruvian ingredients in a tasting menu full of surprises. Dishes like sushi with Amazonian river fish and miso-glazed cod reflect deep culinary artistry. The ambiance is elegant yet relaxed, offering one of Lima's most refined dining experiences.",
    "Panchita celebrates the rich traditions of Peruvian criollo cuisine. Its warm, rustic interior and generous portions reflect a love for home-style cooking. Known for dishes like anticuchos, seco de res, and tamales, it's a great place to explore authentic flavors in a welcoming, family-style setting. Chef Gastón Acurio's vision shines through every plate.",
    "Rafael is a sophisticated bistro offering a fusion of Peruvian and Mediterranean flavors. Located in Miraflores, its art-filled interior and intimate ambiance make it a favorite for fine dining. Chef Rafael Osterling's menu features elegant plates like duck confit with tacu tacu and tuna tiradito. The cocktail bar is exceptional, making it ideal for a romantic dinner or a stylish night out.",
    "Kjolle, led by chef Pía León, focuses on native Peruvian ingredients sourced from coast, jungle, and Andes. With bright, seasonal tasting menus, dishes are colorful, textural, and rooted in biodiversity. Located in Barranco next to Central, its minimalistic design and earthy décor reflect its connection to the land. It's a celebration of ingredients rarely seen outside Peru.",
    "Estadio F.C. Restaurante is a sports-themed gem that combines football nostalgia with hearty Peruvian fare. The walls are adorned with soccer jerseys, trophies, and vintage photos. Its signature dish, Lomo Saltado, is served with rice shaped like a soccer ball and goal post. Ideal for families and fans, it offers comfort food and a fun, stadium-like atmosphere.",
    "La Rosa Náutica is Lima's most romantic restaurant, perched on a Victorian-style pier extending into the Pacific Ocean. The view at sunset is breathtaking. Specializing in seafood, it serves dishes like seared fish with Peruvian sauces, ceviche, and fine desserts. Elegant and classic, it's popular for special occasions, proposals, and memorable dinners by the sea.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gourmet Lima",
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
                  'Peruvian Cuisine',
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
                            limaRestaurants[index],
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
