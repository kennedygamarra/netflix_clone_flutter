import 'package:flutter/material.dart';

class RoundedItem extends StatelessWidget {
  RoundedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
         children: <Widget>[
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110),
              border: Border.all(color: Colors.yellow, width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/img/vikings.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset(
            'assets/img/vikingsLogo.png',
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
          ),
        ]),
        const SizedBox(width: 8),
      ],
    );
  }
}
