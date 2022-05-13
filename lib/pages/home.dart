import 'package:flutter/material.dart';
import 'package:netflix_clone/components/principal_poster.dart';
import 'package:netflix_clone/components/rounded_item.dart';
import 'package:netflix_clone/components/image_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
         PrincipalPoster(),
         horizontalListRounded('Avances', RoundedItem(),7),
         horizontalListImage('Tendencias', ImageItem(),7),
         horizontalListImage('Mi lista', ImageItem(),7),
         horizontalListImage('Series de terror', ImageItem(),7),
         horizontalListImage('Nuevos lanzamientos', ImageItem(),7),
         
        ]
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}

BottomNavigationBar bottomNavigationBar(){
  return BottomNavigationBar(
    

    backgroundColor: const Color.fromARGB(255, 20, 19, 19),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[700],
    showUnselectedLabels: true,
    unselectedFontSize: 9,
    selectedFontSize: 9,
    type: BottomNavigationBarType.fixed,

    items: const <BottomNavigationBarItem> [
      BottomNavigationBarItem(icon:Icon(Icons.home), label: 'Inicio', ),
      BottomNavigationBarItem(icon:Icon(Icons.search), label: 'Buscar', ),
      BottomNavigationBarItem(icon:Icon(Icons.movie), label: 'Proximamente', ),
      BottomNavigationBarItem(icon:Icon(Icons.download), label: 'Descargas', ),
      BottomNavigationBarItem(icon:Icon(Icons.menu), label: 'Mas', ),
    ],
    
  );
}

//backgroundColor: Colors.grey[900]

Widget horizontalListRounded(String title, Widget item, int qty) {
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Padding(
        padding: EdgeInsets.only(left: 10,bottom: 6),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, ),
        child: Container(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: qty,
            itemBuilder: (BuildContext context, int index) {
              return item;
            },
          ),
        ),
      ),
  
    ],
  );
}

Widget horizontalListImage(String title, Widget item, int qty) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top:16,left: 10, bottom: 6),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, bottom: 20),
        child: Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: qty,
            itemBuilder: (BuildContext context, int index) {
              return item;
            },
          ),
        ),
      ),
    ],
  );
}
