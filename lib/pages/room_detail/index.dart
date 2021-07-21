import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;
  const RoomDetailPage({Key key, this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('房间详情页'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('$roomId'),
            ),
          ],
        ));
  }
}


