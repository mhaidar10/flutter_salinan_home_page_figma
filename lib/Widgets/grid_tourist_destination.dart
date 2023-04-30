import 'package:flutter/material.dart';
import '../datas/grid_item_datas.dart';

class GridTouristDestination extends StatelessWidget {
  const GridTouristDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: itemsGrid.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  constraints: const BoxConstraints.expand(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      itemsGrid[index].imgGrid,
                      fit: BoxFit.fill,
                      color: const Color.fromARGB(80, 0, 0, 0),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    itemsGrid[index].textGrid,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
