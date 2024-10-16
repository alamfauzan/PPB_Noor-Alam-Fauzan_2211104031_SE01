import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible and Expanded'),
      ),
      body: Column(
        children: <Widget>[
          // Baris dengan Flexible
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          // Baris dengan Expanded
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
