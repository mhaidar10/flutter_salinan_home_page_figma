import 'package:flutter/material.dart';

class JagaKesehatan extends StatelessWidget {
  const JagaKesehatan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/jaga_kesehatan.png',
        fit: BoxFit.fill,
        width: 370,
      ),
    );
  }
}
