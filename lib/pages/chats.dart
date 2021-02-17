import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/model/chatModel.dart';
import 'package:whatsapp/pages/chatScreen.dart';

class chats extends StatefulWidget {
  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: dummyData.length,
      itemBuilder: (context,i)=>Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => chatScreen()));
            },
            leading: CircleAvatar(
              radius: 30,
              foregroundColor: appBarColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dummyData[i].time,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 14),),


              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Text(dummyData[i].message,style: TextStyle(color: appBarColor,fontSize: 14),),
                  Spacer(),
                  CircleAvatar(
                    foregroundColor: appBarColor.withOpacity(0.9),
                    radius: 10,
                    child: Text("1",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),

            ),
          ),
        ],

      ),

    );


  }
}
