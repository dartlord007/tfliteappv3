
import 'package:get/get.dart';
import 'package:tfliteappv3/scan_controller.dart';

class GlobalBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(() => ScanController());
  }
}