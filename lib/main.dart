import 'package:flutter/material.dart';
import 'package:whatsapp/homePage.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/pages/camera.dart';
List<CameraDescription> cameras;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chatsapp",
      home: HomePage(cameras),
    );
  }
}
