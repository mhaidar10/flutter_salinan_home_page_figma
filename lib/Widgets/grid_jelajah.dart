import 'package:flutter/material.dart';
import '../datas/grid_item_jelajah.dart';

class GridJelajah extends StatelessWidget {
  const GridJelajah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: gridItemJelajah.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(gridItemJelajah[index].imgJelajah),
              ),
              Expanded(
                child: Text(
                  gridItemJelajah[index].textJelajah,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
