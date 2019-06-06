import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('当前的页面是a：$currentPage'),
      controller: PageController(
        initialPage: 0,
        keepPage: true,
        viewportFraction: 0.85
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0, 0),
          child:
              Text('ONE', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0, 0),
          child:
              Text('TWO', style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0, 0),
          child: Text('THREE',
              style: TextStyle(fontSize: 32, color: Colors.white)),
        ),
      ],
    );
  }
}
