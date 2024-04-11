

import 'package:elfinbook/facebook_ui/widgets/circleButton.dart';
import 'package:elfinbook/facebook_ui/widgets/quickButton.dart';
import 'package:elfinbook/icons/custom_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: const Row(
          children: const [
            QuickButton(label: "Gallery", color: Color(0xff92BE87), iconData: CustomIcons.photos),
            SizedBox(width: 15),
            QuickButton(label: "Tag Friends", color: Color(0xffFE7574), iconData: CustomIcons.user_friends),
            SizedBox(width: 15),
            QuickButton(label: "Live", color: Color(0xff7BBAFF), iconData: CustomIcons.video_camera),
          ],
        ),
      ),
    );
  }
}
