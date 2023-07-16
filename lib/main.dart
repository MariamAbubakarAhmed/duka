import 'dart:ui' show PointerDeviceKind;
import 'package:flutter/material.dart';
import 'package:pwanistore/core/app_theme.dart';

import 'package:pwanistore/src/view/screens/home_screen.dart';
import 'package:pwanistore/src/view/screens/select_usertype..dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const UserScreen(),
      theme: AppTheme.lightAppTheme,
    );
  }
}