import 'package:flutter/material.dart';
import 'base.dart';

class Kirish extends StatelessWidget {
  static const id = "/kkirr";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          SizedBox(child:
          RaisedButton(
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  DeterminatePage()));
          },
            textColor: Colors.white,
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF075009),
                      Color(0xFF099A41),
                      Color(0xFF68FA1E),
                    ]
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text("        Zikr        "),
            ),
          ),
          ),
          ),
        );
  }
}
