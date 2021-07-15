import 'package:flutter/material.dart';
import 'package:tictok_app/tik_tok_icons_icons.dart';

class ButtonSection extends StatelessWidget {
  static const double NavigationIconSize = 22.0;
  static const double CreateButtonWidth = 38.0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      RaisedButton(
          color: Colors.black,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TikTokIcons.home,
                color: Colors.white,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          )),
      RaisedButton(
          color: Colors.black,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TikTokIcons.search,
                color: Colors.white,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Discover',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          )),
      Center(child: cutstomCreateIcon),
      RaisedButton(
          color: Colors.black,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TikTokIcons.messages,
                color: Colors.white,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Inbox',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          )),
      RaisedButton(
          color: Colors.black,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                TikTokIcons.profile,
                color: Colors.white,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Me',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          )),
    ]);
  }

  Widget get cutstomCreateIcon => Container(
      width: 38.0,
      height: 27.0,
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 45, 108),
                borderRadius: BorderRadius.circular(7.0),
              )),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 211, 234),
                borderRadius: BorderRadius.circular(7.0),
              )),
          Center(
            child: Container(
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Icon(
                Icons.add,
                size: 20.0,
              ),
            ),
          )
        ],
      ));
}
