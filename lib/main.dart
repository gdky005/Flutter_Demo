import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "navigration",
                  onPressed: () => debugPrint("搜索按钮")),
            ],
            title: Text("WangQing"),
            centerTitle: true,
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: Container(
            color: Colors.white,
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      "WangQing",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text("WangQing@zkteam.cc"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/fda13803.jpg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://f.hiphotos.baidu.com/image/h%3D300/sign=d985fb87d81b0ef473e89e5eedc551a1/b151f8198618367aa7f3cc7424738bd4b31ce525.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.green[400].withOpacity(0.6),
                              BlendMode.hardLight)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Messages',
                      textAlign: TextAlign.right,
                    ),
                    trailing:
                        Icon(Icons.message, color: Colors.black12, size: 22.0),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text(
                      'Favorite',
                      textAlign: TextAlign.right,
                    ),
                    trailing:
                        Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: Text(
                      'Settings',
                      textAlign: TextAlign.right,
                    ),
                    trailing:
                        Icon(Icons.settings, color: Colors.black12, size: 22.0),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
