import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget{
  @override
  Widget build (BuildContext context){
   return Row(
     children: [
       ClipRRect(
         borderRadius: BorderRadius.circular(6),
         child: Image.network('https://i.pinimg.com/originals/67/5e/bc/675ebc2fd210a8bd5362928a51514960.jpg',
         height: 600,
         width: 110,
          fit: BoxFit.cover,
          ),
       ),
        const SizedBox(width: 10,),
     ],
   ); 
  }

}