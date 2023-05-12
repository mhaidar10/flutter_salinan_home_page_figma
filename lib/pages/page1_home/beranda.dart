import 'package:flutter/material.dart';

import '../../Widgets/banner_foto.dart';
import '../../Widgets/grid_jelajah.dart';
import '../../Widgets/grid_tourist_destination.dart';
import '../../Widgets/informasi_lainnya.dart';
import '../../Widgets/jaga_kesehatan.dart';
import '../../Widgets/judul_jelajah.dart';
import '../../Widgets/lihat_lainnya.dart';
import '../../Widgets/list_view_berita.dart';
import '../../Widgets/top_profile.dart';
import '../../Widgets/tourist_destionation.dart';

class Beranda extends StatelessWidget {
  const Beranda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 50),
          // ignore: prefer_const_constructors
          TopProfile(),
          SizedBox(height: 20),
          BannerFoto(),
          SizedBox(height: 40),
          TouristDestination(),
          SizedBox(height: 40),
          GridTouristDestination(),
          SizedBox(height: 50),
          LihatLainnya(),
          SizedBox(height: 60),
          Divider(
            indent: 20,
            endIndent: 20,
            height: 2,
            color: Color.fromARGB(75, 0, 0, 0),
          ),
          SizedBox(height: 60),
          JudulJelajah(),
          SizedBox(height: 60),
          GridJelajah(),
          SizedBox(height: 60),
          JagaKesehatan(),
          SizedBox(height: 60),
          ListViewBerita(),
          SizedBox(height: 20),
          Divider(
            indent: 20,
            endIndent: 20,
            height: 2,
            color: Color.fromARGB(75, 0, 0, 0),
          ),
          SizedBox(height: 50),
          InformasiLainnya(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
