import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constant.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/alerts.dart';
import 'package:whatsapp/pages/setName.dart';
import 'package:whatsapp/pages/verify.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();

          UserCredential result = await _auth.signInWithCredential(credential);

          User user = result.user;

          if (user != null) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("SuccessFully"),
            ));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SetName(
                          user: user,
                        )));
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Otp Verification Failed"),
                );
              },
            );
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Otp Verification"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () async {
                        final code = _codeController.text.trim();
                        AuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId, smsCode: code);

                        UserCredential result =
                            await _auth.signInWithCredential(credential);

                        User user = result.user;

                        if (user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetName(
                                        user: user,
                                      )));
                        } else {
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  // void _randomOtp(){
  //     var rand = new Random();
  //     for(var i=0;i<1;i++){
  //       print(rand.nextInt(1000000));
  //     }
  // }

  String phone = "";
  String name = "";
  Future _login() async {
    var url5 = BASE_URL + "saveLogin";
    print(url5);
    http.Response response5 = await http.post(Uri.encodeFull(url5), body: {
      "name": "",
      "phone": phone,
    });
  }

  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        child: Scaffold(

          body: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 10,
                  width: MediaQuery.of(context).size.width * 7.1 / 10,
                  child: Row(
                    children: [
                      Text(
                        "Enter Your Phone Number",
                        style: TextStyle(
                            color: appBarColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                        "Whatsapp will send an SMS message to verify your phone number"),
                  ),
                ),
                Container(
                  child: Center(
                      child: new DropdownButton<String>(
                    hint: Text("Select Your Country"),
                    items: <String>[
                      'India',
                      'America',
                      'UAE',
                      'Russia',
                      'Nepal'
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 6 / 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: new DropdownButton<String>(
                          isDense: true,
                          hint: Text("+91"),
                          items: <String>[
                            'India',
                            'America',
                            'UAE',
                            'Russia',
                            'Nepal'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          controller: _phone,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                          ),
                          onChanged: (value) {
                            setState(() {
                              phone = value;
                            });
                          },
                          onSubmitted: (v) {
                            _login();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Carrier SMS Charges May Apply")],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("Send Otp"),
                        color: Colors.green,
                        onPressed: () async {
                          if (_phone.text.isEmpty) {
                            showAlertDialog(context);
                          } else if (_phone.text.length < 10) {
                            phoneLengthLess(context);
                          } else if (_phone.text.length < 10) {
                            phoneLengthMore(context);
                          } else {
                            final phone = _phone.text.trim();
                            loginUser(phone, context);
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


