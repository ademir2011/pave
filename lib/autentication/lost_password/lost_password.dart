import 'package:flutter/material.dart';
import 'package:pave/components/CHeader.dart';
import 'package:pave/components/CRaisedButton.dart';
import 'package:pave/components/cTextFormField.dart';

class LostPassword extends StatefulWidget {
  static final String route = '/lost-password';
  _LostPasswordState createState() => _LostPasswordState();
}

class _LostPasswordState extends State<LostPassword> {
  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 50),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 65,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Vamos enviar a senha para seu e-mail!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Color(0xFFBF4949),
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 50),
                      CTextFormField(
                        hintText: 'E-mail',
                        validator: (value) {},
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CRaisedButton(
                        title: 'Enviar',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
