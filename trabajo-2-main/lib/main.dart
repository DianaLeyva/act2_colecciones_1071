import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Atributos personalizables de la carta
  final Color cardColor = Colors.white;       // 1. Color de fondo
  final String cardValue = 'A';               // 2. Valor (A, K, Q, etc.)
  final String cardSuit = '♥';                // 3. Palo (♥, ♦, ♠, ♣)
  final double cardFontSize = 32;             // 4. Tamaño del texto
  final double cardElevation = 10;            // 5. Elevación (sombra)

  // Color del AppBar
  final Color appBarColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de Debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carlos Esteban Melgar Oropeza a.22308051281079'),
          backgroundColor: appBarColor, // Color personalizado
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: cardElevation, // Sombra de la carta
                color: cardColor,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    '$cardValue$cardSuit',
                    style: TextStyle(
                      fontSize: cardFontSize,
                      color: _getSuitColor(cardSuit), // Color automático por palo
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

  // Función para asignar color según el palo
  Color _getSuitColor(String suit) {
    return (suit == '♥' || suit == '♦') ? Colors.red : Colors.black;
  }
}