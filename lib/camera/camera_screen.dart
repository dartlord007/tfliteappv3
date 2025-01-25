import "package:flutter/material.dart";
import "package:tfliteappv3/camera/camera_viewer.dart";

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        CameraViewer(),
      ],
    );
  }
}