import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: Colors.grey,
      ),
      body: const Text('sandbox')
    );
  }
}