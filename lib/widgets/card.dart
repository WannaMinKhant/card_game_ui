import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key,}) : super(key: key);

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
          child: Image.asset(
            "assets/images/back_cover.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
