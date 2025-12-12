import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.arrow_back),
          label: const Text("Kembali (pop)"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}