
import 'package:flutter_app/main.dart';
import 'package:flutter/material.dart';

class Graph1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Visualization"),),
     // backgroundColor: Colors.black12,
      body: SingleChildScrollView( 
              child: Container(
                padding: EdgeInsets.only(top:20),
          child: Column(children: [
           
            Image.asset('assets/graph1.PNG'),
             Container(
               color: Colors.greenAccent,
               child: Text("2019 Pie chart",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ),
           
            Image.asset('assets/plot_zoom1.PNG'),
             Container(
               color: Colors.greenAccent,
               child: Text("State vs Total no of votes Scatter Plot",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ),
            Image.asset('assets/plot_zoom2.PNG'),
             Container(
               color: Colors.greenAccent,
               child: Text("State vs Total no of votes Jitter Plot",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ),
            Image.asset('assets/newplot3.PNG'),
            Image.asset('assets/newplot4.PNG'),
            Image.asset('assets/plot_zoom_png5.PNG'),
            Container(
               color: Colors.greenAccent,
               child: Text("Election results vs Total no of votes ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ),
            Image.asset('assets/plot_zoom_png6.PNG'),
           Container(
               color: Colors.greenAccent,
               child: Text("Histogram for % of votes ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ), 
            Image.asset('assets/Capture7_1.PNG'),
            Image.asset('assets/Capture8.PNG'),
            Image.asset('assets/Capture9.PNG'),
            Container(
               color: Colors.greenAccent,
               child: Text("EVM Votes ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
             ),
          ],),
     ),
      ),
    );
  }
}
