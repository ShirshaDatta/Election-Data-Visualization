
import 'package:flutter/material.dart';
import 'package:flutter_app/sidebar/sidebar.dart';

import 'sidebar/sidebar_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(child: SideBar()),
      ),
      body: SingleChildScrollView(child: Column(
       children: [
         Text("2019 Election Details",
         style: TextStyle(fontWeight: FontWeight.bold),),
         Card(
           child: Image.asset('assets/page1_2019.PNG'),
           shadowColor: Colors.deepOrange,
           ),
         FlatButton(         
           color: Colors.orangeAccent,
           child:
         Text("click to view graphs") ,onPressed: ()
         {
           Navigator.pushNamed(context, "/graphs");
         }),
         Text("2014 Election Details",
         style: TextStyle(fontWeight: FontWeight.bold),),
         Card(
           child: Image.asset('assets/page1_2014.PNG'),
           shadowColor: Colors.deepOrange,
           ),
         FlatButton(         
           color: Colors.orangeAccent,
           child:
         Text("click to view graphs") ,onPressed: ()
         {
           Navigator.pushNamed(context, "/graphs1");
         })
       ],
      )
      ),
    );
  }
}

/*class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(child: SideBar()),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                "Election Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "2019-2020",
                style: TextStyle(
                  color: Color(0xFF1BB5FD),
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Text(
                "NDA - 353",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "BJP - 303\nSS - 18\nJDU - 16\nLPJ - 6\nSAD - 2\nAD- 2",
                style: TextStyle(
                  color: Color(0xFF1BB5FD),
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.flag,
                  color: Colors.white,
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Text(
                "UPA - 92",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "INC - 52\nDMK - 23\nNCP - 5\nIUML - 3\nJKNC - 3\nKCM- 1",
                style: TextStyle(
                  color: Color(0xFF1BB5FD),
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.flag,
                  color: Colors.white,
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              title: Text(
                "OTH - 97",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "TMC - 22\nYSRCP - 22\nBJD - 12\nBSP - 10\nTRS - 9\nSP- 5",
                style: TextStyle(
                  color: Color(0xFF1BB5FD),
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.flag,
                  color: Colors.white,
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
    //todo add the data of the election you are using as text
  }
}
*/