import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final String imageurl;
  final Function(BuildContext context) onTap;
  IndexNavigatorItem(this.title, this.imageurl, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home.png', (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
  IndexNavigatorItem('合租', 'static/images/people.png', (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/location.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
  IndexNavigatorItem('去出租', 'static/images/house-rent.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
];

