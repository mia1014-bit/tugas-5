import 'package:flutter/material.dart';
import '../../pages/data_display_page.dart';

class SendDataTab extends StatefulWidget {
  const SendDataTab({super.key});

  @override
  State<SendDataTab> createState() => _SendDataTabState();
}

class _SendDataTabState extends State<SendDataTab> {
  final TextEditingController controller = TextEditingController();

  void sendData() {
    if (controller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Isi dulu teksnya")),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DataDisplayPage(receivedText: controller.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            "Send Data Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: "Masukkan teks",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: sendData,
            child: const Text("Kirim ke Halaman Lain (push)"),
          ),
        ],
      ),
    );
  }
}