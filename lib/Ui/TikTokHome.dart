import 'package:flutter/material.dart';
import 'package:tictok_app/Widgets/actionToolBar.dart';
import 'package:tictok_app/Widgets/buttonToolBar.dart';
import 'package:tictok_app/Widgets/videoSection.dart';

class TikTokHome extends StatefulWidget {
  @override
  _TikTokHomeState createState() => _TikTokHomeState();
}

class _TikTokHomeState extends State<TikTokHome> {
  Widget get topSection => Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Following'),
            Container(width: 15.0),
            Text('For you',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold))
          ],
        ),
      );

  Widget get middleSection => Expanded(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          VideoSection(),
          ActionToolBar(),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: <Widget>[
          //TopSection
          topSection,
          //Middle Section
          middleSection,
          //Button Section
          ButtonSection(),
        ]));
  }
}
