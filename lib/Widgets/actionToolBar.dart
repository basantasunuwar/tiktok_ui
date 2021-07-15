import 'package:flutter/material.dart';
import 'package:tictok_app/tik_tok_icons_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ActionToolBar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareActionIconSize = 25.0;
  static const double ProfileImageSize = 50.0;
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(),
        _getSocialAction(icon: TikTokIcons.heart, title: '3.2m'),
        _getSocialAction(icon: TikTokIcons.chat_bubble, title: '16.4k'),
        _getSocialAction(
            icon: TikTokIcons.reply, title: 'Share', isShere: true),
      ]),
    );
  }

  Widget _getSocialAction({String title, IconData icon, bool isShere = false}) {
    return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: isShere ? ShareActionIconSize : ActionIconSize,
              color: Colors.grey[300],
            ),
            Padding(
                padding: EdgeInsets.only(top: isShere ? 5.0 : 2.0),
                child: Text(title,
                    style: TextStyle(fontSize: isShere ? 10.0 : 12.0)))
          ],
        ));
  }

  Widget _getFollowAction() {
    return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Stack(
          children: [
            _getProfilePicture(),
            _getPlusIcon(),
          ],
        ));
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          height: ProfileImageSize,
          padding: EdgeInsets.all(1.0),
          width: ProfileImageSize,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/khabey lane.jpg'),
                  fit: BoxFit.cover)),
          // child: Image(
          //     image: AssetImage('assets/images/khabey lane.jpg'),
          //     fit: BoxFit.cover)
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
        bottom: 0,
        left: (ActionWidgetSize / 2) - (PlusIconSize / 2),
        child: Container(
            width: PlusIconSize,
            height: PlusIconSize,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 43, 84),
                borderRadius: BorderRadius.circular(15.0)),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 20.0,
            )));
  }

  LinearGradient get musicGredient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800],
      ], stops: [
        0.0,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicPlayerAction() {
    return Container(
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(
          children: [
            Container(
                height: ProfileImageSize,
                padding: EdgeInsets.all(11.0),
                width: ProfileImageSize,
                decoration: BoxDecoration(
                    gradient: musicGredient,
                    borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://secure.gravatar.com/avatar/f7e64d8551a494d62c49038e17061eab',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                )),
          ],
        ));
  }
}
