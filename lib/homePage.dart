import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/conditions.dart';
import 'package:whatsapp/pages/contacts.dart';
import 'package:whatsapp/pages/search.dart';
import 'package:whatsapp/pages/settings.dart';
import 'package:whatsapp/pages/status.dart';

class HomePage extends StatefulWidget {
  var cameras;

  HomePage(this.cameras);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var _options = [
    "New group",
    "New boradcast",
    "Whatsapp Web",
    "Starred messages",
    "Settings"
  ];
  var _currentSelection = "New group";
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon:  Icon(Icons.search,color: Colors.white),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child:RawMaterialButton(
                        child: Text("New group"),
                        padding: EdgeInsets.only(right: 25.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Conditions()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: RawMaterialButton(
                        child: Text("New broadcast"),
                        padding: EdgeInsets.only(right: 25.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contacts()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: RawMaterialButton(
                        child: Text("Whatsapp Web"),
                        padding: EdgeInsets.only(right: 25.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contacts()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: RawMaterialButton(
                        child: Text("Starred message"),
                        padding: EdgeInsets.only(right: 25.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contacts()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: RawMaterialButton(
                        child: Text("Settings"),
                        padding: EdgeInsets.only(right: 25.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
            child: Icon(Icons.more_vert_sharp),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ],
        backgroundColor: appBarColor,
        title: Text("Chatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(child: Text("CHATS")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS")),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          camera(widget.cameras),
          chats(),
          status(),
          calls(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: appBarColor,
          elevation: 10,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Contacts()),
            );
          }),
    );
  }
}
