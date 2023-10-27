

import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 12,right: 12),
        child: Column(
          children: [
            Center(
              child: Text("Settings Screen"),
            )
          ],
        ),
      ),
    );
  }
}