import 'package:flutter_app/widgets/googleSignUpButton_widget.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                "Welcome to 100 years",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignUpButtonWidget(),
          SizedBox(height: 12),
          Text(
            "Login to continue",
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
        ],
      );
}
