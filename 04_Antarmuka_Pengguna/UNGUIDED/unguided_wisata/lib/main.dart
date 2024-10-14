import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Didekat Banyumas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: const Color.fromARGB(255, 198, 237, 4),
          centerTitle: true,
          toolbarHeight: 70.0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
              children: [
                _buildLocationContainer(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/8/8b/Curug_Cipendok_Waterfall.jpg',
                  title: 'Kebun Raya Baturaden',
                  description: 'Kebun raya dengan koleksi tanaman.',
                ),
                const SizedBox(height: 10),
                _buildLocationContainer(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/8/8b/Curug_Cipendok_Waterfall.jpg',
                  title: 'Curug Cipendok',
                  description: 'Air terjun yang indah.',
                ),
                const SizedBox(height: 10),
                _buildLocationContainer(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfuU1DxMSrUvV0-Y3F8aZeZ3zDlrpVl9_ffA&s',
                  title: 'Lokawisata Baturaden',
                  description: 'Danau dengan pemandangan menawan.',
                ),
                const SizedBox(height: 10),
                _buildLocationContainer(
                  imageUrl:
                      'https://img.inews.co.id/media/1200/files/inews_new/2023/03/30/Baturraden__Adventure__Forest.jpg',
                  title: 'adventure forest baturaden',
                  description: 'Gua dengan stalaktit yang menawan.',
                ),
                const SizedBox(height: 10),
                _buildLocationContainer(
                  imageUrl:
                      'https://img.antaranews.com/cache/1200x800/2022/05/03/45.jpg.webp',
                  title: 'Taman Marga Satwa',
                  description: 'Tempat perlindungan satwa.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationContainer(
      {required String imageUrl,
      required String title,
      required String description}) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              height: 200,
              width: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 100,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
