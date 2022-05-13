import 'package:flutter/material.dart';
import 'models/base.dart';
import 'models/kirish.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp(),
        routes: {
        Kirish.id:(context)=>Kirish(),
        DeterminatePage.id:(context)=>DeterminatePage(),
      },
    )
   );
class MyApp extends StatefulWidget{
  _State createState()=>_State();
}
class _State extends State<MyApp>{
  List <Widget> item=[
    Kirish(),
    DeterminatePage(),
    Text("Bosh"),
  ];
  int selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: selected,
          children: item,
        ),
      ),
      bottomNavigationBar: _show(),
    );
  }
  Widget _show(){
    return BottomNavigationBar(items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
      BottomNavigationBarItem(icon: Icon(Icons.image),label: "Image"),
      BottomNavigationBarItem(icon: Icon(Icons.book),label: "Book"),
    ],
      currentIndex: selected,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: (int index){
        setState(() {
          selected=index;
        });
      },

    );
  }

}
