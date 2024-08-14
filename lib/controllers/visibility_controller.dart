import 'package:get/get.dart';

class VisibilityController extends GetxController {
  var isVisible = false.obs;

  toggle() {
    isVisible.value = !isVisible.value;
  }
}
