import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: GoogleFonts.poppins()),
        backgroundColor: const Color.fromARGB(255, 9, 202, 255),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(''),
            ),
            SizedBox(height: 20),

            Text(
              'Noor Alam Fauzan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // NIM
            Text(
              '2211104031',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Rekayasa Perangkat Lunak',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
