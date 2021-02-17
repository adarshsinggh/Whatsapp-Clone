import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/login.dart';

class Conditions extends StatefulWidget {
  @override
  _ConditionsState createState() => _ConditionsState();
}

class _ConditionsState extends State<Conditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*1.5/10,
                child: Center(child: Text("Welcome to Whatsapp",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: appBarColor),)),
              ),
              Container(
                height: MediaQuery.of(context).size.height*4/10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/wp.png"),
                    radius: 150,
                  ),
                ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*1.5/10,
                alignment: Alignment.center,
                child: Center(child: Text("Tap 'Agree and Continue' to Accept the Whatsapp Terms of Service and Privacy Policy")),
              ),
              Container(
                child: ButtonTheme(
                  minWidth: 350,
                  child: RaisedButton(
                    elevation: 7,
                    color: Colors.green,
                    child: Text("Agree & Continue"),
                    textColor: Colors.white,
                    onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
