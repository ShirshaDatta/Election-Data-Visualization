import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/provider/googleSignIn.dart';
//import 'package:flutter_app/pages/dashboard.dart';
import 'package:flutter_app/widgets/backgroundPainter_widget.dart';
import 'package:flutter_app/widgets/loggedIn_widget.dart';
import 'package:flutter_app/widgets/signUp_widget.dart';

import 'dashboard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return HomeScreen();
              } else {
                return SignUpWidget();
              }
            },
          ),
        ),
      );

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          //Image: AssetImage('assets/images/top_header.png'),
          //CustomPaint(painter: BackgroundPainter()) ,
          Center(child: CircularProgressIndicator()),
        ],
      );
}
