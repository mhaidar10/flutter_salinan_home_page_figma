import 'package:flutter/material.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SizedBox(
              width: 60,
              height: 60,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile.png",
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              hintText: 'Cari Wisata',
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.search),
              ),
            ),
          ),
        ),
        const Flexible(
          flex: 1,
          child: Icon(Icons.favorite_border, size: 30),
        ),
      ],
    );
  }
}
