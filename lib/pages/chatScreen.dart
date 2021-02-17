import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/profile.dart';

class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 7,
        leading: Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/pp.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 50),
                        child: Row(
                          children: [
                            Text(
                              "Adarsh Singh",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,top: 4),
                        child: Text("last seen today at 6:30 pm",style: TextStyle(fontSize: 12),),
                      )
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.videocam_sharp,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height*10/10,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.blue.shade100,
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 2 / 10,
                    height: 25,
                    child: Column(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 9.25 / 10,
                  child: Center(
                    child: Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.orange.shade100,
                          elevation: 12,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 9 / 10,
                            height: MediaQuery.of(context).size.height * 1 / 10,
                            child: Column(
                              children: [
                                Center(
                                  child: Column(
                                    children: [
                                      Icon(Icons.lock),
                                      Center(
                                          child: Text(
                                              "Messages to this chat and calls are now secured with end-to-end encryption.Tap for more info."))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 140, top: 20),
                        height: 55,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Container(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  SelectableText("This is the new message"),
                                  Spacer(),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 4),
                                      child: Text(
                                        "10.00 PM",
                                        style: TextStyle(fontSize: 10,color: Colors.grey),
                                      )),
                                ],
                              ),
                            ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the Message"),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 4),
                                child: Row(
                                  children: [
                                    Text("10.01 PM",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 140, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the new message"),
                              Spacer(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 4),
                                  child: Text(
                                    "10.00 PM",
                                    style: TextStyle(fontSize: 10,color: Colors.grey),
                                  )),
                            ],
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the Message"),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 4),
                                child: Row(
                                  children: [
                                    Text("10.01 PM",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 140, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the new message"),
                              Spacer(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 4),
                                  child: Text(
                                    "10.00 PM",
                                    style: TextStyle(fontSize: 10,color: Colors.grey),
                                  )),
                            ],
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the Message"),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 4),
                                child: Row(
                                  children: [
                                    Text("10.01 PM",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 140, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the new message"),
                              Spacer(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 4),
                                  child: Text(
                                    "10.00 PM",
                                    style: TextStyle(fontSize: 10,color: Colors.grey),
                                  )),
                            ],
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the Message"),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 4),
                                child: Row(
                                  children: [
                                    Text("10.05 PM",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 140, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the new message"),
                              Spacer(),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 4),
                                  child: Text(
                                    "10.00 PM",
                                    style: TextStyle(fontSize: 10,color: Colors.grey),
                                  )),
                            ],
                          ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 150, top: 20),
                        height: 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text("This is the Message"),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 4),
                                child: Row(
                                  children: [
                                    Text("10.01 PM",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                    Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 12,
                            child: TextField(
                              maxLines: null,
                              decoration: InputDecoration(
                                  hintText: "Type a Message",
                                  focusColor: appBarColor,
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.emoji_emotions_rounded),
                                  ),
                                  suffixIcon: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.attach_file),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.camera_alt),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: appBarColor,
                              radius: 23,
                              child: IconButton(
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
