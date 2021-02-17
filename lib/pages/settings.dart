import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35,top: 35),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/pp.jpg"),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30,bottom: 30),
                      child: Column(
                        children: [
                          Text("Adarsh Singh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.vpn_key,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.message,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.notifications,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Notifications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.data_usage,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Data Usage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.bar_chart,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("About and help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 40,top: 25),
                child: Row(
                  children: [
                    Icon(Icons.people,color: appBarColor,size: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text("Contacts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
