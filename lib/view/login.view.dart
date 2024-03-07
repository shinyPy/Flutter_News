import 'package:flutter/material.dart';
import 'package:flutter_news/utils/global.colors.dart';
import 'package:flutter_news/view/home.view.dart';
import 'package:flutter_news/view/widgets/helpers/button.global.dart';
import 'package:flutter_news/view/widgets/components/social.login.dart';
import 'package:flutter_news/view/widgets/helpers/text.form.global.dart';
import "package:get/get.dart";

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image(
                    height: 100,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Login to your account',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //// Email Input
                    TextFormGlobal(
                      controller: emailController,
                      text: 'Email',
                      obscure: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //// Password Input
                    TextFormGlobal(
                        controller: passwordController,
                        text: 'Password',
                        textInputType: TextInputType.text,
                        obscure: true)
                  ],
                ),
                const SizedBox(height: 20),
                ButtonGlobal(
                  color: GlobalColors.secondaryColor,
                  text: 'Sign in',
                  onTap: () {
                    Get.to(Homepage());
                  },
                ),
                const SizedBox(height: 25),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 50,
      //   color: Colors.white,
      //   alignment: Alignment.center,
      //   child: Row(
      //     children: [
      //       Text('Test'),
      //     ],
      //   ),
      // ),
    );
  }
}
