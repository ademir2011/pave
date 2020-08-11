import 'package:flutter/material.dart';
import 'package:pave/autentication/lost_password/lost_password.dart';
import 'package:pave/autentication/signup/signup.dart';
import 'autentication/login/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        //Home Module
        SplashScreen.route: (_) => SplashScreen(),

        //Autentication Module
        Login.route: (_) => Login(),
        SignUp.route: (_) => SignUp(),
        LostPassword.route: (_) => LostPassword(),
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
