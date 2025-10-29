import 'package:flutter/material.dart';

// Définition de la palette de couleurs basée sur votre charte graphique
const Color primaryGreen = Color(0xFF0F5132);
const Color darkGrey = Color(0xFF333333);
const Color white = Color(0xFFFFFFFF);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elycorp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryGreen,
        scaffoldBackgroundColor: darkGrey, // Un fond sombre pour le thème global
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: white, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: white),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryGreen,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            // Ajout d'un filtre de couleur pour la nuance de vert
            color: primaryGreen.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
          // Superposition pour assombrir et améliorer la lisibilité
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Contenu centré
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Espace réservé pour le logo
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: white.withOpacity(0.8), width: 2),
                    ),
                    child: const Icon(
                      Icons.business,
                      size: 80,
                      color: white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Nom de l'entreprise
                  Text(
                    'ELYCORP',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 48,
                          letterSpacing: 2,
                          shadows: [
                            const Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                  ),
                  const SizedBox(height: 10),
                  // Slogan
                  Text(
                    'Solutions Professionnelles',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
