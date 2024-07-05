import 'package:flutter/material.dart';
import 'package:flutter_application_1/coffee_prefs.dart';
import 'package:flutter_application_1/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kahveci Abi', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('Kahvemi nasıl severim...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs()
          ),
          Expanded(
            child: Image.asset('assets/img/coffee-bg.jpg',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter
            )
          )
        ],
      ),
    );
  }
}