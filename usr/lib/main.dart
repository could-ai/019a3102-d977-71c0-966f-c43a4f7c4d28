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
        scaffoldBackgroundColor: white,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: darkGrey),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryGreen),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Espace réservé pour une image ou un logo professionnel
            // Vous pouvez remplacer ce conteneur par votre propre image/logo
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.business, // Une icône à l'aspect professionnel
                size: 80,
                color: primaryGreen,
              ),
            ),
            const SizedBox(height: 40),
            // Nom de l'entreprise
            Text(
              'ELYCORP',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 48,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            // Slogan
            Text(
              'Solutions Professionnelles',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
