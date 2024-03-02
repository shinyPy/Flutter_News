import "dart:async";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:flutter_news/utils/global.colors.dart";
import 'package:flutter_news/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.secondaryColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Image(
            height: 30,
            image: AssetImage('assets/images/login.png'),
          ),
        ),
      ),
    );
  }
}
