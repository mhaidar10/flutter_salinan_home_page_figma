import 'package:flutter/material.dart';

class BannerFoto extends StatelessWidget {
  const BannerFoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/ikan.png',
          scale: 0.1,
          color: const Color.fromARGB(30, 0, 0, 0),
          colorBlendMode: BlendMode.darken,
        ),
        const Positioned(
          left: 20,
          top: 300,
          child: Text(
            'Wisata Air',
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: 315,
          child: Text(
            'Pulau Bukulimau',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: 345,
          child: Text(
            'Underwater',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}
