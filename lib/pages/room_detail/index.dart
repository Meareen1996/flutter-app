import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/page_content.dart';

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
            MyStatefulWidget()
          ],
        ));
  }
}

double _volume = 0.0;

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : $_volume')
      ],
    );
  }
}
