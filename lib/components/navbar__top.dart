import 'package:flutter/material.dart';

class NavbarTop extends StatelessWidget {
  NavbarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
    Image.asset(
      'assets/img/logo.png',
      width: 30,
      height: 30,

    ),
    const Text(
     'Programas', style: TextStyle(color: Colors.white,fontSize: 14),
    ),
    const Text(
     'Peliculas', style: TextStyle(color: Colors.white,fontSize: 14),
    ),
    const Text(
     'Mi lista', style: TextStyle(color: Colors.white,fontSize: 14),
    ),
      ]
    );
  }
}