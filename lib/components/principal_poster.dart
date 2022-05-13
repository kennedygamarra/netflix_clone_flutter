import 'package:flutter/material.dart';
import 'package:netflix_clone/components/navbar__top.dart';

class PrincipalPoster extends StatelessWidget {
  PrincipalPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        serieInfo(),
        homePlayButtons(),
        
      ],
    );
  }

  Widget header() {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
      Image.asset(
        'assets/img/breakingbad.jpg',
        height: 450,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[
              Colors.black26,
              Colors.black,
            ])),
      ),
      SafeArea(
        child: NavbarTop(),
      ),
    ]);
  }

  Widget serieInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        const Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            Icons.fiber_manual_record,
            color: Colors.grey[700],
            size: 6,
          ),
        ),
        const Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 12,),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            Icons.fiber_manual_record,
            color: Colors.grey[700],
            size: 6,
          ),
        ),
        const Text(
          'Drama',
          style: TextStyle(color: Colors.white, fontSize: 12,),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            Icons.fiber_manual_record,
            color: Colors.grey[700],
            size: 6,
          ),
        ),
        const Text(
          'Crudo',
          style: TextStyle(color: Colors.white, fontSize: 12,),
        ),
      ],
    );
  }

  Widget homePlayButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: const <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  'Mi lista',
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 24,
              ),
              label: const Text(
                'Reproducir',
                style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
            Column(children: const <Widget>[
              Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 20,
              ),
              Text(
                'Información',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ]),
          ]),
    );
  }
}
