import 'package:flutter/material.dart';
import 'package:pave/components/CHeader.dart';
import 'package:pave/components/CRaisedButton.dart';
import 'package:pave/components/cTextFormField.dart';
import 'package:pave/repositories/auth_repository.dart';

import '../login/login.dart';

class SignUp extends StatefulWidget {
  static final String route = '/signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final _tffc_name = TextEditingController();
  final _tffc_email = TextEditingController();
  final _tffc_password = TextEditingController();
  final _tffc_password_confirm = TextEditingController();

  var enumTypeRegisterButton = 'REGISTRAR';

  final AuthRepository _auth = AuthRepository();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: 50.0,
                left: 50.0,
                top: MediaQuery.of(context).padding.top,
              ),
              child: CHeader(
                isLogged: false,
              ),
            ),
            Form(
              key: _formKey,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            CTextFormField(
                              controller: _tffc_name,
                              hintText: 'Nome',
                              validator: (value) =>
                                  value.isEmpty ? 'Sem texto' : null,
                            ),
                            SizedBox(height: 10.0),
                            CTextFormField(
                              controller: _tffc_email,
                              hintText: 'E-mail',
                              validator: (value) =>
                                  (value.isEmpty) ? 'Sem texto' : null,
                            ),
                            SizedBox(height: 10.0),
                            CTextFormField(
                              controller: _tffc_password,
                              hintText: 'Senha',
                              validator: (value) =>
                                  (value.isEmpty) ? 'Sem texto' : null,
                              isPasswordField: true,
                            ),
                            SizedBox(height: 10.0),
                            CTextFormField(
                              controller: _tffc_password_confirm,
                              hintText: 'Confirmar Senha',
                              validator: (value) {
                                if (value.isEmpty) return 'Sem texto';
                                if (value != _tffc_password.text.trim())
                                  return 'Confirmação de senha diferente';
                                return null;
                              },
                              isPasswordField: true,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.0),
                      CRaisedButton(
                          title: enumTypeRegisterButton,
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() =>
                                  enumTypeRegisterButton = 'CARREGANDO...');
                              await _auth.signUpEmailAndPassword(
                                email: _tffc_email.text,
                                password: _tffc_password.text,
                              );
                              setState(
                                  () => enumTypeRegisterButton = 'REGISTRAR');
                              await Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (build) => Login()),
                              );
                            }
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
