

import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          "Bienvenidos! Esto es genial !! Buenisimo ! "
              "Es multiple linea",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}