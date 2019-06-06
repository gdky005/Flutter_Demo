import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {

 List<Widget> _buildTiles(int length) {
   return List.generate(length, (int index) {
     return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18, color: Colors.grey)
          ),
        );
   });
 }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              Text(posts[index].author, style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('当前的页面是a：$currentPage'),
      controller: PageController(
          initialPage: 0, keepPage: true, viewportFraction: 0.85),
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