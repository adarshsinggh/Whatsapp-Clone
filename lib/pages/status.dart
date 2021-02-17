import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/model/statusModel.dart';

class status extends StatefulWidget {
  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     physics: BouncingScrollPhysics(),
      itemCount: statusDummy.length,
      itemBuilder: (context,i)=>Column(
        children: [
          ListTile(
            leading:
            CircleAvatar(
              foregroundColor: appBarColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("assets/pp.jpg"),
              radius: 30,

            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              child: Text("Tap to Add a Status Update",style: TextStyle(color: Colors.grey[800],fontSize: 14),),
            ),
          ),
          Divider(
            height: 10,
          ),
          Container(padding:EdgeInsets.only(left: 20),alignment:Alignment.centerLeft,child: Text("Recent Updates",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.grey[700]),)),

          ListTile(
            leading: CircleAvatar(
              foregroundColor: appBarColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(statusDummy[i].contactAvatar),

            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(statusDummy[i].contact,style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              child: Text(statusDummy[i].time,style: TextStyle(color: Colors.grey[800],fontSize: 14),),
            ),
          )
        ],
      ),
    );
  }
}

class context {
}
