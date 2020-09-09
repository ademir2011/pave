import 'package:flutter/material.dart';
import 'package:pave/autentication/controllers/login_controller.dart';
import 'package:pave/autentication/views/signup.dart';
import 'package:pave/components/CRaisedButton.dart';
import 'package:pave/components/CFlatButton.dart';
import 'package:pave/components/CRaisedButtonSecondary.dart';
import 'package:pave/components/CTextFormField.dart';
import 'package:pave/main/views/restaurants.dart';

class Login extends StatefulWidget {
  static final String route = '/login';

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 20),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 65,
                ),
                Column(
                  children: <Widget>[
                    CTextFormField(
                      // controller: loginController.tffcLogin,
                      hintText: 'E-mail',
                      validator: (_) {},
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CTextFormField(
                      // controller: loginController.tffcPassword,
                      hintText: 'Senha',
                      validator: (value) {},
                      isPasswordField: true,
                    ),
                    CFlatButton(),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CRaisedButton(
                      title: 'Entrar',
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Restaurants.route);
                      },
                    ),
                    SizedBox(height: 20.0),
                    CRaisedButtonSecondary(
                      title: 'Cadastre-se',
                      onPressed: () =>
                          Navigator.pushNamed(context, SignUp.route),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
