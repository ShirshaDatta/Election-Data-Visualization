import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
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
        '/':(context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.orange,
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: SignInScreen()),
          ),
        ),
      ),
      '/SignIn':(context) => SignInScreen(),
      '/graphs': (context) => Graph1(),
      '/home': (context) => Homepage(),
      },
    
      
    );
  }
}
