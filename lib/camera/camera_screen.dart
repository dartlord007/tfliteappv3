import "package:camera/camera.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:tfliteappv3/scan_controller.dart";

class CameraScreen extends GetView<ScanController> {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(builder: (controller){
      if (!controller.isInitialized){return Container();}
      return MaterialApp(
        home: CameraPreview(controller.cameraController),
      );
    });
  }
}