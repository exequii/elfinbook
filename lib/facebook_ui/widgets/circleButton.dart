import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget{
  final Color color;
  final IconData iconData;
  final bool showBadge;


  const CircleButton({super.key, required this.color, required this.iconData, this.showBadge = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
          child: Icon(
            iconData,
            size: 16,
            color: Colors.white,
          ),
        ),
        if(showBadge)
          Positioned(
            right: 0,
            top: -2,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  )
              ),
            ),
          )
      ],
    );
  }

}