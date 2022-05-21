
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homeflaw/provider/bookmarksProvider.dart';
import 'package:homeflaw/screens/appview.dart';
import 'package:homeflaw/screens/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   loadProviders(BuildContext context) async {
    await Provider.of<BookmarksProvider>(context, listen: false);
     
  }
  @override
  void initState() {
    super.initState();
    loadProviders(context);
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AppView())));
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF2962FF),
                Color(0xFF0D47A1),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/iconn2.png",
                  height: 300.0,
                  width: 300.0,
                ),
                /* Text(
                  " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),*/
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}