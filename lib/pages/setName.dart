import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/homePage.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/pages/camera.dart';

class SetName extends StatefulWidget {
  var cameras;
  @override
  _SetNameState createState() => _SetNameState();
  final User user;
  SetName({this.user});


}

class _SetNameState extends State<SetName> {


  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*1/10,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Profile Info",style: TextStyle(color: appBarColor,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*1/10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Please provide your name and an optional\n profile photo"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*3/10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/pp.jpg"),
                      radius: 70,
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*1/10,
                width: MediaQuery.of(context).size.width*8/10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(

                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: "Type Your Name Here"
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.emoji_emotions,color: Colors.grey,),
                      onPressed: (){
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*2/10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text("Next",style: TextStyle(color: Colors.white),),
                      color: appBarColor,
                      onPressed: (){

                        Navigator.of(context).popUntil((route) => route.isFirst);
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(cameras),));
                      },
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
