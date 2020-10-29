
import 'package:flutter_app/main.dart';
import 'package:flutter/material.dart';

class Graph1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Visualization"),
      ),
     // backgroundColor: Colors.black12,
      body: SingleChildScrollView(
              child: Container(
          child: Column(children: [
            Image.asset('assets/graph1.PNG'),
            Image.asset('assets/graph2.PNG'),
            Image.asset('assets/graph3.PNG'),
            Image.asset('assets/graph4.PNG'),
            //Image.asset('assets/graph2.PNG'),
            
          ],),
     ),
      ),
    );
  }
}
