import 'package:flutter/material.dart';

import 'Ui/TikTokHome.dart';

void main(List<String> args) {
  runApp(TikTakApp());
}

class TikTakApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTokApp',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      home: TikTokHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
