import 'package:flutter/material.dart';

void main() => runApp(const CarlsJrApp());

class CarlsJrApp extends StatelessWidget {
  const CarlsJrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const Color carlsYellow = Color(0xFFFFC72C);

  // 1. EDITAR AQUÍ: Cambia estos nombres por los tuyos
  final List<String> nombresProductos = const [
    'Bebidas Mix',
    'Famous Star',
    'Double Western',
    'Awita',
    'Double Western Bacon',
    'Chicken Burger',
    'Café Caliente',
    'Cheese Fries',
    'Choco Chip Cookies',
    'Ice Cream Cup',
    'Low Carb Burger',
    'Malteada Fresa',
    'Milkshake Vainilla',
    'Onion Rings',
  ];

  final List<String> imagenesLinks = const [
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png', 
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12burguer.png', 
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12dwbcb.jpg', 
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/awuita%20de%20chica%20gamer.jpg',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/boblewesternuwu.png',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/burguer%20de%20pollo.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/caf%C3%A9.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/cheesefires.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/cookies.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/icecream.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/lowcarb.png',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/malteada.jpg',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/milkshake.PNG',
    'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/onionrings.PNG',
  ];

  final List<double> ratings = const [
    5.0, 4.8, 4.9, 5.0, 4.7, 4.5, 4.2, 4.8, 5.0, 4.6, 4.3, 4.9, 4.7, 4.5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: carlsYellow,
        elevation: 0,
        title: const Text(
          'Carls jr Iker Serrano',
          style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.w900, 
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9, // Ajustado para que quepa el texto extra
          ),
          itemCount: imagenesLinks.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: carlsYellow, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      imagenesLinks[index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => 
                        const Icon(Icons.fastfood, color: carlsYellow, size: 40),
                    ),
                    
                    // Capa inferior con Nombre y Rating
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black,
                              Colors.black.withAlpha(150),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // 2. NOMBRE DEL PRODUCTO
                            Text(
                              nombresProductos[index].toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: carlsYellow,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            // CALIFICACIÓN
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.star, color: carlsYellow, size: 12),
                                const SizedBox(width: 4),
                                Text(
                                  '${ratings[index]} / 5.0',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}