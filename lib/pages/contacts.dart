import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
           Navigator.pop(context);
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     builder: (context) => HomePage(widget.cameras),
            //   ),
            // );
          },
        ),
        title: Text("Select Contacts"),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert_sharp),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: appBarColor,
                    child: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )
                ],
              ),
              Divider(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: appBarColor,
                    child: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "New Broadcast",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.qr_code),
                ],
              ),
              Divider(
                height: 10,
              ),
              _contact("+91 9454160861", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Bsnl Number", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 10,
              ),
              _contact("Nikita", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Ishita", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Rakhi", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Aditya", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Alok", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Saloni", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Ayush", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Naam Hai", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Sanam", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Akshat", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Saloni", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Yashvi", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Manashvi", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Anshika", "Hey there!I Am Using New Whatsapp"),
              Divider(
                height: 15,
              ),
              _contact("Anika", "Hey there!I Am Using New Whatsapp"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contact(String phone, String about) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  phone,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  about,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
