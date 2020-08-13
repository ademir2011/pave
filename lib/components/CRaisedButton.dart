import 'package:flutter/material.dart';

class CRaisedButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  CRaisedButton({@required this.title, @required this.onPressed});

  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEBA951),
              Color(0xFFFF9A57),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.5),
        child: Text(
          this.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 17.0,
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
