import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 70.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('@khabey.lane',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'Video title and some other stuff',
                  ),
                  Row(
                    children: [
                      Icon(Icons.music_note, size: 15.0, color: Colors.white),
                      Text('Artist name - Album name - song',
                          style: TextStyle(fontSize: 12.0)),
                    ],
                  )
                ],
              ),
            )));
  }
}
