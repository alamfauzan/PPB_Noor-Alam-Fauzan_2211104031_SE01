import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 191, 235, 15),
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Rekomendasi Wisata Banyumas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.network(
                  'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/04/21/2696149041.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.network(
                              wisataImages[index],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  wisataTitles[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 227, 32, 32),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  wisataDescriptions[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: wisataImages.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> wisataImages = [
  'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/12/03/3899878272.jpg',
  'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/06/16/1703112402.jpg',
  'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/29/2024/05/31/Picsart_24-05-31_16-54-47-007-213545453.jpg',
  'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p2/207/2024/03/04/WhatsApp-Image-2024-03-04-at-095326-1423240919.jpeg',
];

final List<String> wisataTitles = [
  'Gunung Slamet',
  'Talaga Sunyi',
  'Curug Nangga',
  'Hutan Pinus',
];

final List<String> wisataDescriptions = [
  'Gunung Slamet merupakan gunung tertinggi di Jawa Tengah, terkenal bagi pendaki dengan jalur menantang dan pemandangan alam memukau..',
  'Telaga Sunyi merupakan Telaga yang tenang dengan air jernih, ideal untuk bersantai di tengah hutan asri.',
  'Curug Nangga merupakan Air terjun berundak tujuh yang menawarkan panorama alam yang unik dan fotogenik.',
  'Hutan Pinusmerupakan Area wisata yang menawarkan udara segar dan pemandangan hutan pinus yang luas, cocok untuk piknik dan berjalan santai.',
];
