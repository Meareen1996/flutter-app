import "package:flutter/material.dart";
import 'index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: indexNavigatorItemList
              .map((item) => InkWell(
                  onTap: () => {item.onTap(context)},
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageurl,
                        width: 47.5,
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )))
              .toList()),
    );
  }
}
