import 'package:flutter/material.dart';
import 'list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LatihanListView(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text('Item 1'),
                ],
              ),
            ),
            color: const Color.fromARGB(255, 249, 2, 2),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 2'),
            color: const Color.fromARGB(255, 219, 170, 9),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 3'),
            color: const Color.fromARGB(255, 14, 250, 6),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Item 4'),
            color: const Color.fromARGB(255, 19, 16, 218),
          ),
        ],
      ),
    );
  }
}
