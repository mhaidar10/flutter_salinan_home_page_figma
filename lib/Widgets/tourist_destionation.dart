import 'package:flutter/material.dart';

class TouristDestination extends StatelessWidget {
  const TouristDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Destinasi Wisata',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Pilihan Terbaik',
          style: TextStyle(
            color: Colors.black.withOpacity(0.3),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
