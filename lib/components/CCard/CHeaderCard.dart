import 'package:flutter/material.dart';

class CHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF568A8E),
                Color(0xFF2B5876),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 23.0,
          width: double.infinity,
        ),
        Row(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffFDCF09),
                // backgroundImage: AssetImage('images/batman.jpg'),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Text(
                  '17/09/2020',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: Color(0xFFFBFAF8),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
