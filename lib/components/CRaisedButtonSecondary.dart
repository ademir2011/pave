import 'package:flutter/material.dart';

class CRaisedButtonSecondary extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  CRaisedButtonSecondary({@required this.title, @required this.onPressed});

  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white.withOpacity(0.80),
      padding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: Color(0xFFFF9A57)),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.symmetric(vertical: 12.5),
        child: Text(
          this.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF9A57),
            fontSize: 17.0,
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
