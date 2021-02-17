import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/model/callModel.dart';
import 'package:whatsapp/model/chatModel.dart';

class calls extends StatefulWidget {
  @override
  _callsState createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: dummyCalls.length,
      itemBuilder: (context,i)=>Column(
        children: [

          ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundColor: appBarColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyCalls[i].avatar),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyCalls[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                // Text(dummyCalls[i].callType,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 14),),
                Center(child: Icon(Icons.video_call,color: appBarColor,size: 30,)),


              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Icon(Icons.call_made_sharp,color: Colors.green,),
                  Text(dummyCalls[i].date,style: TextStyle(color: appBarColor,fontSize: 14),),

                ],
              ),

            ),
          ),
        ],

      ),

    );
  }
}
