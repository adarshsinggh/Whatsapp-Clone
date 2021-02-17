class StatusModel{
  String myStatus;
  String addUpdate;
  String myAvatar;
  String contact;
  String contactAvatar;
  String time;

  StatusModel({this.myStatus,this.addUpdate,this.myAvatar,this.contact,this.contactAvatar,this.time});
  
}
List<StatusModel> statusDummy=[
  StatusModel(

    contact: "Bsnl Number",
    contactAvatar: "assets/1.jpg",
    time: "8 minutes ago",
  ),
  StatusModel(

    contact: "Bsnl Number",
    contactAvatar: "assets/2.jpg",
    time: "8 minutes ago",
  ),
  StatusModel(

    contact: "Bsnl Number",
    contactAvatar: "assets/3.jpg",
    time: "8 minutes ago",
  ),
  StatusModel(

    contact: "Bsnl Number",
    contactAvatar: "assets/1.jpg",
    time: "8 minutes ago",
  ),
  StatusModel(
    myStatus: "My Status",
    addUpdate: "Tap to Add a Status Update",
    myAvatar: "assets/pp.jpg",
  ),
];