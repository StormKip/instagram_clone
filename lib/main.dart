import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/create_post.dart';
import 'pages/notifications.dart';
import 'pages/profile.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){

    return new MaterialApp(
      color: Colors.yellow,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
    NotificationsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.search),
          ),
          Tab(
            icon: new Icon(Icons.add),
          ),
          Tab(
            icon: new Icon(Icons.favorite),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          )
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black,
      ),
      ),
      
    );
  }
}

