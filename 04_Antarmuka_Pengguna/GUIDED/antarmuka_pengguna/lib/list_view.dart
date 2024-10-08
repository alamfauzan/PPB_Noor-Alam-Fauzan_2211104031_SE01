import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  const LatihanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bob Marley')),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 226, 3, 3),
            child: Center(
              child: Text('ONE LOVE'),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 243, 231, 3),
            child: Center(
              child: Text('ROOTS ROCK,REGGAE'),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 4, 214, 32),
            child: Center(
              child: Column(
                children: [
                  Image.network(
                    'https://1.bp.blogspot.com/-x3piQXuuoXk/VkWXIjs10oI/AAAAAAAAABs/lVxBUtlLWt4/s1600/bob%2Bmarley%2Bdan%2Breggae.jpg',
                    width: 500,
                    height: 500,
                  ),
                  Text('B.O.B M.A.R.L.E.Y'),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 107, 111, 107),
            child: Center(
              child: Text('Text D'),
            ),
          ),
        ],
      ),
    );
  }
}
