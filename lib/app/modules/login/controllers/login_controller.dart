import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = "".obs;
  final password = "".obs;
  final errorMessage = "".obs;

  void login() {
    // Perform authentication logic here
    if (email.value == "admin@gmail.com" && password.value == "admin") {
      Get.offNamed("/home"); // Redirect to home screen
    } else {
      errorMessage.value = "Email Atau Password Salah";
    }
  }
}
