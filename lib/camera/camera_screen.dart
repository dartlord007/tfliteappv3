import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_state_manager/src/simple/get_view.dart";
import "package:tfliteappv3/scan_controller.dart";

class CameraScreen extends GetView<ScanController> {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(builder: (controller),);
  }
}