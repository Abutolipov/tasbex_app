import 'package:flutter/material.dart';

import '../main.dart';
import 'base.dart';

class Pray extends StatefulWidget {
  _Allone createState() => _Allone();
}

class _Allone extends State<Pray> {
  String lavh = "AAAA";
  String malumot = """Malumot\nTarif\nHadis""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 70,
              margin: EdgeInsets.only(top: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  "Doular ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  lavh,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (lavh == "AAAA") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerV()),
                );
              }
            },
          ),
          GestureDetector(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  lavh,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (lavh == "AAAA") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerV()),
                );
              }
            },
          ),
          GestureDetector(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  lavh,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (lavh == "AAAA") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerV()),
                );
              }
            },
          ),
          GestureDetector(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  lavh,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (lavh == "AAAA") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerV()),
                );
              }
            },
          ),
          GestureDetector(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  lavh,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (lavh == "AAAA") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerV()),
                );
              }
            },
          ),
        ],
      )),
    );
  }

  Widget buttonV() {
    return SizedBox(
      child: RaisedButton(
        onPressed: () {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (builder)=>MyApp()));
        },
        textColor: Colors.white,
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF075009),
                Color(0xFF099A41),
                Color(0xFF77F745),
              ],
            ),
          ),
          padding: EdgeInsets.all(12.0),
          child: Text("Zikr etmoq"),
        ),
      ),
    );
  }

  Widget ContainerV() {
    return Scaffold(
      body: SizedBox(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(12.0),

            child: Column(
              children: [
                Center(child: Text(malumot)),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: buttonV(),
                ),
              ],
            
          ),
        ),
      ),
    );

  }
}
