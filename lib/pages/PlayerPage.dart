import 'package:flutter/material.dart';

class Player extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          height: 50,
          width: 500,
          child: Center(
            child: Text("Teste do player"),
          ),
        )
      ),
    );
  }
}