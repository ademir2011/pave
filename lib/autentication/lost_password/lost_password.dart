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
          gradient: LinearGradient(
            colors: [
              Color(0xFF5C4F8D),
              Color(0xFF9A3A5A),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Form(
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 50.0),
                      child: CTextFormField(
                        hintText: 'E-mail',
                        validator: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    CRaisedButton(
                      title: 'RECUPERAR',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
