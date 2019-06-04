import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "navigration",
            onPressed: () => debugPrint("菜单")),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              tooltip: "navigration",
              onPressed: () => debugPrint("搜索按钮")),
        ],
        title: Text("WangQing"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: null,
    );
  }
}
