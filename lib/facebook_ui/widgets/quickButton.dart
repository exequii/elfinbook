import 'package:elfinbook/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:elfinbook/facebook_ui/widgets/circleButton.dart';

class QuickButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;

  const QuickButton({super.key, required this.iconData, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          right: 25
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color.withOpacity(0.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(color: color.withOpacity(0.7), iconData: iconData),
          const SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
