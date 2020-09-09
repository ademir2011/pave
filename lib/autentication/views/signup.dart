import 'package:flutter/material.dart';
import 'package:pave/autentication/controllers/signup_controller.dart';
import 'package:pave/autentication/views/login.dart';
import 'package:pave/components/CRaisedButton.dart';
import 'package:pave/components/cTextFormField.dart';

class SignUp extends StatefulWidget {
  static final String route = '/signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CTextFormField(
                            // controller: signUpController.tffcName,
                            hintText: 'Nome',
                            validator: (_) {},
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            // controller: signUpController.tffcEmail,
                            hintText: 'E-mail',
                            validator: (_) {},
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            // controller: signUpController.tffcPassword,
                            hintText: 'Senha',
                            validator: (_) {},
                            isPasswordField: true,
                          ),
                          SizedBox(height: 10.0),
                          CTextFormField(
                            // controller: signUpController.tffcPasswordConfirm,
                            hintText: 'Confirmar Senha',
                            validator: (_) {},
                            isPasswordField: true,
                          ),
                          SizedBox(height: 50.0),
                          CRaisedButton(
                            title: 'Registrar',
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Login.route);
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
