import 'package:flutter/material.dart';
import 'package:salinan_home_page_figma/datas/grid_item_datas.dart';
import 'dart:core';

class TopProfile extends StatelessWidget {
  const TopProfile({
    super.key,
  });

  void updatedList(String value) {
    final cardItem = itemsGrid.where(
      (element) {
        final titleLower = element.textGrid.toLowerCase();
        final searchLower = value.toLowerCase();
        return titleLower.contains(searchLower);
      },
    );

    print(cardItem);
  }

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
            onChanged: updatedList,
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
