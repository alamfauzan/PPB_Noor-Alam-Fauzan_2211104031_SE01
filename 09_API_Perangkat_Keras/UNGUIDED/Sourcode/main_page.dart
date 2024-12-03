import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Memilih Gambar'),
        backgroundColor: const Color.fromARGB(255, 5, 210, 242),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: image == null ? Colors.grey.shade200 : null,
                image: image != null
                    ? DecorationImage(image: FileImage(File(image!.path)))
                    : null,
              ),
              child: image == null
                  ? const Center(child: Text("No Image Selected"))
                  : null,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    ImagePicker()
                        .pickImage(source: ImageSource.camera)
                        .then((value) {
                      setState(() {
                        image = value;
                      });
                    });
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Color.fromARGB(255, 12, 193, 254),
                  ),
                  label: const Text(
                    'Camera',
                    style: TextStyle(color: Color.fromARGB(255, 7, 226, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    ImagePicker()
                        .pickImage(source: ImageSource.gallery)
                        .then((value) {
                      setState(() {
                        image = value;
                      });
                    });
                  },
                  icon: const Icon(
                    Icons.photo,
                    color: Color.fromARGB(255, 7, 160, 255),
                  ),
                  label: const Text(
                    'Gallery',
                    style: TextStyle(color: Color.fromARGB(255, 7, 185, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (image != null)
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    image = null;
                  });
                },
                label: const Text(
                  'Hapus Gambar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 184, 245),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
