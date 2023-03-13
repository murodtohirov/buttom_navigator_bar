import 'package:flutter/material.dart';

void main() {
  runApp(Mycode());
}

class Mycode extends StatefulWidget {
  const Mycode({super.key});

  @override
  State<Mycode> createState() => _MycodeState();
}

class _MycodeState extends State<Mycode> {
  // Widget a(ind){

  //   if(ind==0){
  //     return Container(
  //       color: Colors.green,
  //     );
  //   } if(ind==1){
  //     return Container(

  //       color: Colors.red,
  //     );
  //   } if(ind==2){
  //     return Container(
  //       color: Colors.yellow,
  //     );
  //   }
  //   return Text('data') ;

  // }
  int ind = 0;
  List<Color> ls = [Colors.green, Colors.yellow, Colors.red];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
          centerTitle: true,
        ),
        body: Container(
          color: ls[ind],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              tooltip: 'Tool tip ',
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_input_antenna),
              label: 'Settings',
            ),
          ],
          currentIndex: ind,
          onTap: (index) {
            setState(() {
              ind = index;
            });
          },
        ),
      ),
    );
  }
}
