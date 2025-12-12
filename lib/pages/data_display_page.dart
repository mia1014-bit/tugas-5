import 'package:flutter/material.dart';

class DataDisplayPage extends StatelessWidget {
  final String receivedText;

  const DataDisplayPage({super.key, required this.receivedText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Display Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Teks yang diterima:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              receivedText,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Kembali"),
            )
          ],
        ),
      ),
    );
  }
}