import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
          Expanded(
            child: TextField(
              autocorrect: true,
            decoration: InputDecoration(
                  fillColor: appBarColor,
                  hintText: 'Search Here',
                  prefixIcon: IconButton(icon: Icon(Icons.arrow_back,color: appBarColor),onPressed: (){
                    Navigator.pop(context);
                  }, ),
            ),
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
