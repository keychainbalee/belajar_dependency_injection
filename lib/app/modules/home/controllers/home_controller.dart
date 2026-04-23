import 'package:get/get.dart';

class HomeController extends GetxController {
  var nama = "Iqbal".obs;
  var counter = 0.obs;

  void tambah() {
    counter++;
  }
}