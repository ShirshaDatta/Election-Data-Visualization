import 'package:flutter/material.dart';
import 'package:flutter_app/pages/homepage.dart';
import 'SignInScreen.dart';
import 'sidebar/graph.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vottzy',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
       
      '/':(context) => SignInScreen(),
      '/graphs': (context) => Graph1(),
      '/home': (context) => HomePage(),
      },
    
      
    );
  }
}
