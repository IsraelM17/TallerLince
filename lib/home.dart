import 'package:flutter/material.dart';
import 'movieList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }

class _HomeState extends State<Home> {

  int contador = 0;

  int selectedOption = 0;

  final _bottomAppBarOption = [
    MovieList(),
    Text('Otra pantalla')
  ];

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
        backgroundColor: const Color(0xFF3B4254),
        appBar: AppBar(
          title: Text('Taller Lince'),
          backgroundColor: Colors.orange,
          elevation: 0.0,
        ),
        body: PageView(
          children: <Widget>[
            _bottomAppBarOption.elementAt(selectedOption),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 15.0,
          backgroundColor: Colors.orange.withOpacity(0.9),
          child: Icon(Icons.search),
          onPressed: () => print('Buscar'),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: Colors.grey.withOpacity(0.3),
           primaryColor: Colors.orange,
         ),
         child: BottomNavigationBar(
           items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.home),
               title: Text('Home')
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.menu),
               title: Text('Más')
             )
           ],
           onTap: _onItemTapped,
           currentIndex: selectedOption,
         ),
       )
   );
  }

  void _contador(){
    setState(() {
      contador ++;
      print('$contador');
    });
  }

  void _onItemTapped(int index){
    setState(() {
      selectedOption = index;
    });
  }

}