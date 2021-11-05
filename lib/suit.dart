import 'package:flutter/material.dart';


// ♠
// ♥
// ♣
// ♦
Widget heart(){
  return Text(
    "♥",
    style: TextStyle(
      fontSize: 25,
      color: Colors.red[800],
    ),
  );
}

Widget diamond(){
  return Text(
    "♦",
    style: TextStyle(
      fontSize: 25,
      color: Colors.red[800],
    ),
  );
}


Widget spade(){
  return const Text(
    "♣",
    style: TextStyle(
      fontSize: 25,
      color: Colors.black,
    ),
  );
}


Widget clover(){
  return const Text(
    "♠",
    style: TextStyle(
      fontSize: 25,
      color: Colors.black,
    ),
  );
}

