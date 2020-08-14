import 'package:flutter/material.dart';
import 'package:pave/autentication/signup/signup_controller.dart';
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
  final signUpController = SignUpController();

  void changeEnumTypeRegisterButton(value) {
    setState(() {
      signUpController.enumTypeRegisterButton = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: 50.0,
                left: 50.0,
                top: MediaQuery.of(context).padding.top,
              ),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 65,
              ),
            ),
            Form(
              key: signUpController.formKey,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CTextFormField(
                            controller: signUpController.tffcName,
                            hintText: 'Nome',
                            validator: (value) =>
                                value.isEmpty ? 'Sem texto' : null,
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            controller: signUpController.tffcEmail,
                            hintText: 'E-mail',
                            validator: (value) =>
                                (value.isEmpty) ? 'Sem texto' : null,
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            controller: signUpController.tffcPassword,
                            hintText: 'Senha',
                            validator: (value) =>
                                (value.isEmpty) ? 'Sem texto' : null,
                            isPasswordField: true,
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            controller: signUpController.tffcPasswordConfirm,
                            hintText: 'Confirmar Senha',
                            validator: (value) {
                              if (value.isEmpty) return 'Sem texto';
                              if (value !=
                                  signUpController.tffcPassword.text.trim())
                                return 'Confirmação de senha diferente';
                              return null;
                            },
                            isPasswordField: true,
                          ),
                          SizedBox(height: 50.0),
                          CRaisedButton(
                            title: signUpController.enumTypeRegisterButton,
                            onPressed: () async {
                              if (signUpController.formKey.currentState
                                  .validate()) {
                                await signUpController
                                    .register(changeEnumTypeRegisterButton)
                                    .then(
                                  (value) {
                                    Navigator.pushReplacementNamed(
                                        context, Login.route);
                                  },
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
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
