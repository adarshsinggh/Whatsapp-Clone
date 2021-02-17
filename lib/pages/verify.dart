import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/homePage.dart';
import 'package:whatsapp/pages/alerts.dart';
import 'package:whatsapp/pages/setName.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {


@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1 / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify +91 9454160861",
                      style: TextStyle(
                          fontSize: 22,
                          color: appBarColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Waiting to Automatically Detect \n  a SMS sent to +91 9454160861 "),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 4 / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(

                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: appBarColor,
                          hintText: "--     --     --      --     --     --",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 4 / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Enter 6 Digit Code")],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 8 / 10,
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.message),
                    Text("Resend SMS"),
                    Spacer(),
                    Text("1:00"),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width * 8 / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call),
                    Text("Call me"),
                    Spacer(),
                    Text("1:00")
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 8 / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text(
                        "Verify",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: appBarColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SetName(),
                            ));
                      },
                    )
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
