import 'package:flutter/material.dart';
import 'package:pave/autentication/login/login.dart';
import 'package:pave/repositories/auth_repository.dart';

class CHeader extends StatelessWidget {
  final bool isLogged;

  CHeader({this.isLogged = true});

  final _authService = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: <Widget>[
          isLogged
              ? IconButton(
                  icon: Icon(Icons.dehaze),
                  color: Color(0xFFFBFAF8),
                  iconSize: 35.0,
                  onPressed: () {},
                )
              : IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xFFFBFAF8),
                  iconSize: 35.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
          Expanded(
            child: Text(
              'Pave',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
                fontSize: 20.0,
                color: Color(0xFFFBFAF8),
              ),
            ),
          ),
          isLogged
              ? IconButton(
                  icon: Icon(Icons.clear),
                  color: Color(0xFFFBFAF8),
                  iconSize: 35.0,
                  onPressed: () async {
                    await _authService.signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Login()),
                    );
                  },
                )
              : IconButton(
                  icon: Icon(Icons.clear),
                  color: Color(0x00FBFAF8),
                  iconSize: 35.0,
                  onPressed: () {},
                ),
        ],
      ),
    );
  }
}
