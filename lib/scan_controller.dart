
// ignore_for_file: avoid_print

import 'package:camera/camera.dart';
import 'package:get/get.dart';

class ScanController extends GetxController{

final RxBool _isInitialized = RxBool(false);
bool get isInitialized => _isInitialized.value;
late CameraController _cameraController;
late List<CameraDescription> _cameras;
CameraController get cameraController => _cameraController;


Future<void> _initCamera() async {
  _cameras = await availableCameras();
  _cameraController = CameraController(_cameras[0], ResolutionPreset.max);
  _cameraController.initialize().then((_) {
    _isInitialized.value = true;
   
  }).catchError((Object e) {
    if (e is CameraException){
      switch (e.code){
        case "CameraAccessDenied":
        print ("User denied access to camera");
        break;
        default:
        print("Handle other errors");
        break;

      }
    } 
  });
}
@override
  void onInit() {
    _initCamera();
    super.onInit();
  }
}