import 'package:elfinbook/facebook_ui/widgets/aspectRadio.dart';
import 'package:flutter/material.dart';
import 'facebook_ui/facebook.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_)=>const MyApp(),
      enabled: !kReleaseMode,
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: FacebookUi(),
    );
  }
}
