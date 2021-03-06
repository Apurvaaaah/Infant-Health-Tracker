import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/authenticate/authenticate.dart';
import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/screens/diaper.dart';
import 'package:ihtprototype/screens/feeding.dart';
import 'package:ihtprototype/screens/home/home.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';
import 'package:ihtprototype/screens/sleep.dart';
import 'package:ihtprototype/screens/vaccscreen.dart';
import 'package:ihtprototype/services/auth.dart';
// import 'package:ihtprototype/screens/nursing.dart';

import 'package:google_fonts/google_fonts.dart';

class DrawerCode extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'InfantHealth',
              // style: GoogleFonts.raleway(fontWeight: FontWeight.w700),
              style: GoogleFonts.raleway(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
            decoration: BoxDecoration(
                color: Colors.amberAccent[100],
                image: DecorationImage(
                    image: AssetImage("assets/images/baby.png"))),
          ),
          ListTile(
            title: Text(
              'Feeding',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 45.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/milkbottle.png')),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Feeding()));
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Diaper',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 50.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/babysta.png')),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Diaper()));
            },
          ),
          // ListTile(
          //   title: Text('Nursing'),
          //   onTap: () {
          //     // Update the state of the app.
          //     Navigator.of(context).push(_createRoute2());
          //   },
          // ),
          ListTile(
            title: Text(
              'Sleep',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 50.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/zzz.png')),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new FlutterStopWatch()));
            },
          ),
          ListTile(
            title: Text(
              'Milestones',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 50.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/babybrains.png')),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Milestones()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Growth',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 50.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/growth.png')),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Vaccinations',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 37.0,
                width: 50.0, // fixed width and height
                child: Image.asset('assets/images/vaccine.png')),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new VaccScreen()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            leading: SizedBox(
                height: 50.0,
                width: 45.0, // fixed width and height
                child: Image.asset('assets/images/settings.png')),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
              leading: SizedBox(
                  height: 38.0,
                  width: 45.0, // fixed width and height
                  child: Image.asset('assets/images/login.png')),
              onTap: () async {
                await _auth.signOut();
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Authenticate()),
                );
              }),
        ],
      ),
    );
  }
}
