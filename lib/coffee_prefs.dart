import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_body_text.dart';
import 'package:flutter_application_1/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int yogunluk = 1;
  int seker = 1;

  void increaseYogunluk(){
    setState(() {
      yogunluk = yogunluk < 5 ? yogunluk + 1 : 1;
    });
  }

  void increaseSeker(){
    setState(() {
      seker = seker < 5 ? seker + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Yoğunluk: '),
            //Control Flow
            for(int i = 0; i < yogunluk; i++)
              Image.asset('assets/img/coffee-bean.jpg',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply
              ),
            const Expanded(
              child: SizedBox()
            ),
            StyledButton(
              onPressed: increaseYogunluk,
              child: const Text('+'),
            ),
          ]
        ),
        Row(
          children: [
            const StyledBodyText('Şeker: '),
            for(int i = 0; i < seker; i++)
              Image.asset('assets/img/sugar-cube-2.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply
              ),
            if(seker == 0)
              const StyledBodyText('Şekersiz'),
            const Expanded(
              child: SizedBox()
            ),
            StyledButton(
              onPressed: increaseSeker,
              child: const Text('+'),
            ),
          ]
        )
      ],
    );
  }
}