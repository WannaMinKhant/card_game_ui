import 'dart:math';

import 'package:flutter/material.dart';

import '../suit.dart';

class CardTemplate extends StatelessWidget {
  const CardTemplate({Key? key, this.suit, this.color, this.number})
      : super(key: key);

  // ♠
  // ♥
  // ♣
  // ♦
  final suit;
  final color;
  final number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
            height: 100,
            width: 60,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          number,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    suit,
                    Transform.rotate(
                      angle: pi,
                      child: Row(
                        children: [
                          Text(
                            number,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
