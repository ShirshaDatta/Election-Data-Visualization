import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class NewPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'images/dice.png',
          ),
          Text(
            //Todo add the photo and title here
            "",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
          ),
        ],
      ),
    );
  }
}
