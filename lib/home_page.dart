import 'dart:math';

import 'package:card_game/suit.dart';
import 'package:card_game/widgets/card.dart';
import 'package:card_game/widgets/card_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 200),);
    _animation = Tween(begin: 0.0,end: 1.0).animate(_animationController)..addListener(() {
      setState(() {

      });
    })..addStatusListener((status) {_animationStatus = status;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardTemplate(suit: spade(),color: Colors.black,number: "6",),
                CardTemplate(suit: heart(),color: Colors.red,number: "A",)
                // getFlipCard( heart(), Colors.red, "3",),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children:  [
                  const MyCard(),
                  CardTemplate(suit: diamond(),color: Colors.red,number: "4",),
                ],
              ),
                Transform.rotate(angle: pi/2 ,child: const MyCard()),
                Row(
                  children: [
                    CardTemplate(suit: clover(),color: Colors.black,number: "5",),
                    const MyCard(),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardTemplate(suit: spade(),color: Colors.black,number: "8",),
                getFlipCard( heart(), Colors.red, "3",),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getFlipCard(var suit, var color,var number,){
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateY((pi * _animation.value)),
      child: GestureDetector(
        onTap: (){
          if(_animationStatus == AnimationStatus.dismissed){
            _animationController.forward();
          }else{
            _animationController.reverse();
          }
        },
        child: _animation.value >= 0.5 ? const MyCard() : CardTemplate(
          color: color,
          suit: suit,
          number: number,
        ),
      ),
    );
  }
}
