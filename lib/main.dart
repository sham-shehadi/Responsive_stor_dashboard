import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:task_responsive/screen/home_screen.dart';
import 'package:flutter/foundation.dart';
void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp(),),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
builder: DevicePreview.appBuilder,
debugShowCheckedModeBanner: false,home: HomeScreen(),
    );
  }
}
