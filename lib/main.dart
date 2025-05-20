import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'itinerary.dart';

void main() {
  runApp(const MyApp()); // Changed to MyApp as root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          primary: Colors.deepPurple[800],
          secondary: Colors.amber[200],
          surface: const Color(0xFF1E1E2E),
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 104, 84, 166),
          titleTextStyle: GoogleFonts.dancingScript(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.amber[200],
          ),
          elevation: 6,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.deepPurple[900]?.withOpacity(0.7),
          margin: const EdgeInsets.all(8),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.dancingScript(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Colors.amber[200],
          ),
          displayMedium: GoogleFonts.greatVibes(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.amber[100],
          ),
          bodyLarge: GoogleFonts.raleway(fontSize: 18, color: Colors.white70),
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber[200],
          foregroundColor: Colors.deepPurple[800],
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _welcomeFade;
  late Animation<double> _welcomeScale;
  late Animation<double> _exploreFade;
  late Animation<double> _exploreScale;
  late Animation<Offset> _exploreSlide;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller with 3 seconds duration
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Welcome card animations (starts immediately)
    _welcomeFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _welcomeScale = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.elasticOut),
      ),
    );

    // Explore card animations (starts after welcome animation)
    _exploreFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.easeInOut),
      ),
    );

    _exploreScale = Tween<double>(begin: 0.7, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.elasticOut),
      ),
    );

    _exploreSlide = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.easeOutBack),
      ),
    );

    // Start animation when widget is built
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/homepage/san_martin_square.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Welcome Card with Enhanced Animation
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _welcomeFade.value,
                    child: Transform.scale(
                      scale: _welcomeScale.value,
                      child: child,
                    ),
                  );
                },
                child: Card(
                  elevation: 6,
                  color: const Color.fromARGB(
                    137,
                    244,
                    237,
                    237,
                  )?.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Welcome to Culinary Capital of Lima',
                        style: GoogleFonts.dancingScript(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 229, 225, 14),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Explore Card with Enhanced Animation and Full Clickability
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return SlideTransition(
                    position: _exploreSlide,
                    child: Opacity(
                      opacity: _exploreFade.value,
                      child: Transform.scale(
                        scale: _exploreScale.value,
                        child: child,
                      ),
                    ),
                  );
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Itinerary(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(12),
                  highlightColor: Colors.amber.withOpacity(0.2),
                  splashColor: Colors.amber.withOpacity(0.4),
                  child: Card(
                    elevation: 6,
                    color: const Color.fromARGB(
                      137,
                      244,
                      237,
                      237,
                    )?.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Explore Itineraries',
                          style: GoogleFonts.dancingScript(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 229, 225, 14),
                            letterSpacing: 1.8,
                            shadows: [
                              const Shadow(
                                color: Color.fromARGB(255, 0, 0, 0),
                                offset: Offset(2, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
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
