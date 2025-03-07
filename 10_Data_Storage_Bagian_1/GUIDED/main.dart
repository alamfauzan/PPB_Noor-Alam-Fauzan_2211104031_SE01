import 'package:flutter/material.dart';
import 'package:guidedpertemuan10/view/my_db_view.dart';

import 'view/my_db_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyDatabaseView());
  }
}