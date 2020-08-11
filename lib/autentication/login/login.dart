import 'package:flutter/material.dart';
import 'package:pave/autentication/signup/signup.dart';
import 'package:pave/components/CRaisedButton.dart';
import 'package:pave/components/CFlatButton.dart';
import 'package:pave/components/CRaisedButtonSecondary.dart';
import 'package:pave/components/CTextFormField.dart';
import 'package:pave/repositories/auth_repository.dart';

class Login extends StatefulWidget {
  static final String route = '/login';

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _tffc_login = TextEditingController();
  final _tffc_password = TextEditingController();

  var _txtAutentication = 'Entrar';

  final AuthRepository _auth = AuthRepository();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Colors.green,
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CTextFormField(
                      controller: _tffc_login,
                      hintText: 'E-mail',
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CTextFormField(
                      controller: _tffc_password,
                      hintText: 'Senha',
                      validator: (value) {},
                      isPasswordField: true,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CFlatButton(),
                    CRaisedButton(
                      title: _txtAutentication,
                      onPressed: () async {
                        setState(() => _txtAutentication = 'CARREGANDO...');
                        await _auth
                            .signInEmailAndPassword(
                                email: _tffc_login.text,
                                password: _tffc_password.text)
                            .then((value) {
                          print(value);
                          if (value != null) {
                          } else {
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text('Login ou senha incorretos!'),
                              ),
                            );
                          }
                        }).catchError(
                          (e) {
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text('Houve um erro de autenticação!'),
                              ),
                            );
                            print(e.toString());
                          },
                        );

                        setState(() => _txtAutentication = 'Entrar');
                      },
                    ),
                    SizedBox(height: 20.0),
                    CRaisedButtonSecondary(
                      title: 'Cadastre-se',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
