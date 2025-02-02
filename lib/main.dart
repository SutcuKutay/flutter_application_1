import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('one')
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text('two')
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text('three')
          )
        ],
      )
    );
  }
}