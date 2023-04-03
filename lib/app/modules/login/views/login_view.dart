import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(90, 88, 88, 88),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 150,
                ),
              ),
              Text(
                "\n\nSelamat Datang",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway",
                  color: Colors.white,
                ),
              ),

              Text(
                "\nSilahkan Login Dengan Akun Anda",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  height: 1.255,
                  fontFamily: "Raleway",
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              // Email field
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Color.fromARGB(90, 88, 88, 88),
                  hintStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  Get.find<LoginController>().email.value = value;
                },
              ),

              SizedBox(height: 20),

              // Password field
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Color.fromARGB(90, 88, 88, 88),
                  hintStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  Get.find<LoginController>().password.value = value;
                },
              ),

              SizedBox(height: 20),

              // Login button
              ElevatedButton(
                onPressed: () {
                  Get.find<LoginController>().login();
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFB800),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      width: 2,
                      color: Colors.yellow[700]!,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  minimumSize: Size(335, 58),
                ),
              ),
              SizedBox(height: 20),

              // Show error message if any
              Obx(() {
                final errorMessage =
                    Get.find<LoginController>().errorMessage.value;
                return errorMessage.isNotEmpty
                    ? Text(
                        errorMessage,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      )
                    : SizedBox();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
