import 'package:flutter/material.dart';
import 'package:elfinbook/facebook_ui/widgets/avatar.dart';

class StateInput extends StatelessWidget {
  const StateInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: const Row(
        children: const [
          Avatar(size: 60, asset: 'assets/users/1.jpg'),
          SizedBox(width: 30),
          Flexible(
            child: Text(
              "Que estas pensando, Lisa?",
              style: TextStyle(
                  color: Colors.grey
              ),),
          )
        ],
      ),
    );
  }
}
