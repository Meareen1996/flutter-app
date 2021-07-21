import 'package:flutter/material.dart';
import 'package:hook_up_rent/routes.dart';

// import 'package:fluro/fluro.dart';
class PageContent extends StatelessWidget {
  final String name; //添加name参数
  const PageContent({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$name'),
        ),
        body: ListView(
          children: [
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(
                        context,
                        Routes.home,
                      )
                    },
                child: Text('${Routes.home}')),
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(
                        context,
                        Routes.login,
                      )
                    },
                child: Text('${Routes.login}')),
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(
                        context,
                        Routes.notfound,
                      )
                    },
                child: Text('${Routes.notfound}')),
            ElevatedButton(
                onPressed: () => {
                      Navigator.pushNamed(
                        context,
                        'room/22666',
                      )
                    },
                child: Text('${Routes.roomDetail}'))
          ],
        ));
  }
}
