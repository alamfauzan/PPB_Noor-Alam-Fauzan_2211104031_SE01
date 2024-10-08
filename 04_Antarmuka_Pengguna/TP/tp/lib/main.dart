import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RekomendasiWisata(),
    );
  }
}

class RekomendasiWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Baturaden',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://lh6.googleusercontent.com/proxy/E01iPUnzuj5pfheZvQTYMYtfGz1bT_EkmItk-VLXvkot05u-FKem3nZwGLS-V_yMWzYAM4oxsf5rvVoGNcoZ1QABiimOCMOAnfH8fI8kzpOCYjQgUt48uogpId-L1__1QgLXqydYEghVsFNrW4jFaBJYpaFzBBTc7nAV0C8bj2F07JVoMijcJqqdUxU0', // Ganti dengan URL gambar yang sesuai
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Baturaden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. '
                'Terkemuka dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturaden menjadi destinasi favorit wisatawan lokal maupun mancanegara.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol diklik
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  'Kunjungi Sekarang',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
