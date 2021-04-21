import 'package:flutter/material.dart';
import 'dashboard.dart';
// import 'profile.dart';
import 'editprofile.dart';
import 'requestbooks.dart';
import '../scan/qrgenerate.dart';


class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
              },
            ),


            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => EditProfile()));
              },
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text("Request Books"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => RequestBooks()));
              },
            ),

            ListTile(
              leading: Icon(Icons.qr_code),
              title: Text("QR Scan"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => QrGenerate()));
              },
            ),


            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){

              },
            ),

          ],
        ),
      ),
    );
  }
}
