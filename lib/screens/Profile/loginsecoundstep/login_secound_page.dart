import 'package:flutter/material.dart';

class LoginsecoundstepPage extends StatelessWidget {
  const LoginsecoundstepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginsecoundstepPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginsecoundstepPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
