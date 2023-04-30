import 'package:flutter/material.dart';

class JudulJelajah extends StatelessWidget {
  const JudulJelajah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Jelajahi Sekarang',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Pilih Kategori yang diminati',
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
