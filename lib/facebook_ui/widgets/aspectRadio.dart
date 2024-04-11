

import 'package:flutter/material.dart';

class MyAspectRadio extends StatelessWidget {
  const MyAspectRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
              'https://i.blogs.es/f824b1/new-project-3-1-/1366_2000.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
