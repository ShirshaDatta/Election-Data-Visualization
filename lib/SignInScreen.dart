import 'package:flutter/material.dart';
import 'pages/homepage.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
         // color: Colors.orangeAccent[400],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.PNG'),
            TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                onChanged: (value){
                  email = value;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline),
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
              ,TextField(
                obscureText: true,
                autocorrect: false,
                onChanged: (value){
                  password = value;
                },
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.lock),fillColor: Colors.black,
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            SizedBox(
              child: FlatButton(onPressed: (){
                Navigator.pushNamed(context, '/home');
              }, child: Text("Sign In"), color: Colors.blueAccent,
              ),
            )

          ],
        ),
        /*alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.orangeAccent[400], Colors.orangeAccent[200]],
        )),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              
            ),
            SizedBox(height: 100),
            
          ],
        ),*/
      ),
    );
  }
}

/*Widget _signInButton(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0, // has the effect of softening the shadow
          spreadRadius: 1.0, // has the effect of extending the shadow
          offset: Offset(
            0, // horizontal, move right 10
            5.0, // vertical, move down 10
          ),
        ),
      ],
    ),
    child: FlatButton(
      color: Colors.blue,
      splashColor: Colors.orange,
      onPressed: () {
        // Navigator.push(context, );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => homepage(),
          ),
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
                  child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Column(children: [
              Container(width: 200,
              height: 200,
                child: Image.asset('assets/logo.PNG'))
            ],),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
*/