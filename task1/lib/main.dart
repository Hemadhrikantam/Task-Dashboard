import 'package:flutter/material.dart';
import 'package:task1/view/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Dashboard',
      home: BottomNav(),
    );
  }
}
