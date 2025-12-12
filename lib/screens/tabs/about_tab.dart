import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Aplikasi Tugas 5\n"
              "- Material 3\n"
              "- Navigator Push & Pop\n"
              "- Kirim data antar halaman\n"
              "- Bottom Navigation",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}