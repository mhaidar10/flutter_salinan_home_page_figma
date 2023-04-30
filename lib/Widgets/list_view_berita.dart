import 'package:flutter/material.dart';
import '../datas/list_item_berita.dart';

class ListViewBerita extends StatelessWidget {
  const ListViewBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Informasi dan Berita',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Seputar Belitung Timur',
          style: TextStyle(
            color: Colors.black.withOpacity(0.3),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
        const Divider(
          indent: 20,
          endIndent: 20,
          height: 2,
          color: Color.fromARGB(75, 0, 0, 0),
        ),
        const SizedBox(height: 30),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        listItemBerita[index].imgBerita,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            listItemBerita[index].judulBerita,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            listItemBerita[index].tanggalBerita,
                            style: const TextStyle(
                                color: Color.fromARGB(116, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: listItemBerita.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Divider(
                indent: 20,
                endIndent: 20,
                height: 2,
                color: Color.fromARGB(75, 0, 0, 0),
              ),
            );
          },
        )
      ],
    );
  }
}
