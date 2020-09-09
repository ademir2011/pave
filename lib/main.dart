import 'package:flutter/material.dart';
import 'package:pave/autentication/views/lost_password.dart';
import 'package:pave/autentication/views/signup.dart';
import 'package:pave/main/views/restaurants.dart';
import 'autentication/views/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        //Autentication Module
        Login.route: (_) => Login(),
        SignUp.route: (_) => SignUp(),
        LostPassword.route: (_) => LostPassword(),

        //Main
        Restaurants.route: (_) => Restaurants(),
      },
    ),
  );
}

class SplashScreen extends StatelessWidget {
  static final String route = '/';

  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Login.route);
    });

    return Container(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 100,
          ),
        ),
      ),
    );
  }
}
