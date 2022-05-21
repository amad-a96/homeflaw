import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeflaw/screens/home_screen.dart';
import 'package:homeflaw/screens/login_screen.dart';
import 'package:homeflaw/services/auth_services.dart';

class AppView extends StatelessWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: StreamBuilder<User?>  
      (
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.hasData) {
          return Home1();
        } else {
          return LoginScreen();
          
          
        }
      },
    ),
    );
    
  }
}