import 'package:flutter/material.dart';

class MyRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alineado en horizontal
          crossAxisAlignment: CrossAxisAlignment.start, //Alineado en vertical
          //stretch ocupa tudo el alto posible
          children: [
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
      ),
    );
  }

}