import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title:  Text("Catalog App"),
      ),
      drawer: Drawer(),
          //color: Colors.blueGrey,
         // type: MaterialType.canvas,
          body: Center(
            // heightFactor: 0,
            //widthFactor: 0,
            child: Container(child: Text("welcome to world of flutter")),
          ),
        );
      
  
  }
}