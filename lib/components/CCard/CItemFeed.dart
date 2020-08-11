import 'package:flutter/material.dart';
import 'package:pave/components/CCard/CHeaderCard.dart';

import 'CCard.dart';

class CItemFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          CHeaderCard(),
          SizedBox(height: 10.0),
          CCard(),
        ],
      ),
    );
  }
}
