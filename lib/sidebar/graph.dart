import 'package:flutter_app/main.dart';
import 'package:flutter/material.dart';

class Graph1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black12,
      body: Container(
        child: SingleChildScrollView(
          /*child: FlatButton(onPressed: null, child: 
          Text("hrllo"),color: Colors.amber,),*/
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                subtitle: Text("Pie Chart"),
                title: Icon(Icons.pie_chart),
              ),
              ListTile(
                subtitle: Text("BarChart"),
                title: Icon(Icons.pie_chart),
              ),
              ListTile(
                subtitle: Text("Scatter Plot"),
                title: Icon(Icons.pie_chart),
              ),
            ],
          ),
        ),
     ),
    );
  }
}
