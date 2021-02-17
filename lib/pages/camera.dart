import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class camera extends StatefulWidget {
  List<CameraDescription> cameras;

  camera(this.cameras);

  @override
  _cameraState createState() => _cameraState();
}

class _cameraState extends State<camera> {

  CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.veryHigh);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState((

          ) {

      });
    });
  }


  @override
  void dispose() {
    controller?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   if(!controller.value.isInitialized){
     return Container(
       width: 0.0,
         height: 0.0,
       child: IconButton(
         icon: Icon(Icons.camera_rear_rounded),
         onPressed: (){

         },
       ),
     );
   }
   return AspectRatio(
     aspectRatio: controller.value.aspectRatio,
     child: CameraPreview(controller),
   );

  }

}
