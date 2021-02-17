class callModel {
  String name;
  String date;
  String callType;
  String avatar;

  callModel({this.name, this.date, this.callType, this.avatar});
}
List<callModel> dummyCalls = [
  callModel(
    name: "Nikita Nahata",
    date :"10 December,6:29pm",
    callType: "(Icons.video_call)",
    avatar: "assets/2.jpg",

  ),
  callModel(
    name: "Ishita",
    date :"10 December,1:46pm",
    callType: "(Icons.video_call)",
    avatar: "assets/1.jpg",

  ),
  callModel(
    name: "Yashvi",
    date :"10 December,7:01pm",
    callType: "(Icons.video_call)",
    avatar: "assets/3.jpg",

  ),
  callModel(
    name: "+91 9454160861",
    date :"10 December,6:50pm",
    callType: "(Icons.video_call)",
    avatar: "assets/pp.jpg",

  ),
];
