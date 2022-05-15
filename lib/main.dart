import 'package:flutter/material.dart';
import 'package:tasbex_app/models/duolar.dart';
import 'models/base.dart';


// TODO to'g'irlash kerak alohida klass kerak
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {
        DeterminatePage.id: (context) => DeterminatePage(),
      },
    ));

class MyApp extends StatefulWidget {
  _State createState() => _State();
}

class _State extends State<MyApp> {
  PageController pageController = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      if (pageController.page?.round()!= _currentPage) {
        setState(() {
          _currentPage = pageController.page.round();
        });
      }
    });
  }
  List<Widget> item = [
    DeterminatePage(),
    Pray(),
    Text("Bosh"),
    Text("Bosh"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: pageController,
          children: item,
      ),
      bottomNavigationBar: _show(),
    );
  }

  Widget _show() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
      ],
      currentIndex: _currentPage,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: (page) {
        if (page != _currentPage) {
          setState(() {
            _currentPage = page;
            pageController.animateToPage(page, duration: Duration(milliseconds: 20), curve: Curves.easeInOutCubic);
          });
        }
      },
    );
  }
}
