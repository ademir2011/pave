import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pave/Utils/validator.dart';
import 'package:pave/repositories/auth_repository.dart';

class LoginController {
  final tffcLogin = TextEditingController();
  final tffcPassword = TextEditingController();

  final AuthRepository _auth = AuthRepository();

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  authorize(void Function(String) changeTxtAutentication) async {
    changeTxtAutentication('CARREGANDO...');

    await _auth
        .signInEmailAndPassword(
            email: tffcLogin.text, password: tffcPassword.text)
        .then((value) {
      print(value);
      if (value != null) {
      } else {
        scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text('Login ou senha incorretos!'),
          ),
        );
      }
    }).catchError(
      (e) {
        scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text('Houve um erro de autenticação!'),
          ),
        );
        print(e.toString());
      },
    );

    changeTxtAutentication('Entrar');
  }

  String validatorEmail(value) {
    dynamic emailCheck = Validator.checkEmail(value);
    return (emailCheck == true) ? null : emailCheck;
  }
}
