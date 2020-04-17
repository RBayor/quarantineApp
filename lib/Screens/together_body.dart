import 'package:flutter/material.dart'; 
import 'TogetherList.dart';

class TogetherBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column( 
      mainAxisAlignment: MainAxisAlignment.start, 
      children: <Widget>[ 
        Flexible(child: TogetherList())
      ],
    );
  }
}
