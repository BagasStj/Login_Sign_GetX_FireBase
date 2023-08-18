import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swichat/app/controllers/auth_controller.dart';
import 'package:swichat/app/routes/app_pages.dart';
// import 'package:swichat/app/routes/app_pages.dart';

import '../../../shared/constant.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SwiAps",
              style: GoogleFonts.dmSans(
                  color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 11),
            const Text("INI Untuk Login Mase"),
            const SizedBox(height: 30),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.dmSans(
                        color: textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 11),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]),
                    child: TextField(
                        controller: controller.emailC,
                        decoration: InputDecoration(
                            hintText: "Example@gmail.com",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.dmSans(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.4)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17))),
                  )
                ]),
            const SizedBox(height: 10),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.dmSans(
                        color: textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 11),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]),
                    child: TextField(
                        controller: controller.passwordC,
                        decoration: InputDecoration(
                            hintText: "*********",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.dmSans(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                            ))),
                  )
                ]),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => authC.login(
                      controller.emailC.text, controller.passwordC.text),
                  child: const Text("Ini Tombol Loginya")),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belum punya akunBoss?",
                  style: TextStyle(fontSize: 13),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.REGISTER),
                    child: const Text("Register"))
              ],
            )
          ],
        ),
      )),
    );
  }
}
