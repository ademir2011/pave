import 'package:flutter/material.dart';
import 'package:pave/autentication/lost_password/lost_password.dart';

class CFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        'Esqueceu sua senha?',
        style: TextStyle(
          color: Color(0xFFFF9A57),
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LostPassword()),
        );
      },
    );
  }
}
