import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfliteappv3/camera/camera_screen.dart';
import 'package:tfliteappv3/global_Bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraScreen(),
      title: "Camera App",
      initialBinding: GlobalBindings(),
    );
  }
}
