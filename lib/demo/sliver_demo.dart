import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('WangQing', textAlign: TextAlign.center,),
            // pinned: true,
            floating: true,

          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Material(
                borderRadius: BorderRadius.circular(50),
                elevation: 14,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 32,
                      left: 32,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGrideDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
