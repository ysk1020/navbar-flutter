import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Page'),
      ),
      body: const Center(
        child: Text('Add favorites here.', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
