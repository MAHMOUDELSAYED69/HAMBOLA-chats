import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hambolah_chat_app/core/constant/color.dart';
import 'package:hambolah_chat_app/core/helper/responsive.dart';
import 'package:hambolah_chat_app/view/screen/forget_password.dart';
import 'package:hambolah_chat_app/view/widget/custom_button.dart';

import '../widget/custom_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkGrey,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 0.04861 * ScreenSize.width),//20
          alignment: Alignment.center,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.chat,
                    size: 90,
                    color: MyColors.white,
                  ),
                  SizedBox(height: 0.0461133 * ScreenSize.height), //40
                  const Text("Welcome back!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white)),
                  SizedBox(height: 0.0115283 * ScreenSize.height), //10
                  const Text("We're so excited to see you again!",
                      style:
                          TextStyle(fontSize: 18, color: MyColors.lightGrey)),
                  CustomTextFormField(
                    onSaved: (data) {
                      email = data;
                    },
                    title: "EMAIL",
                  ),
                  SizedBox(height: 0.01729249 * ScreenSize.height), //15
                  CustomTextFormField(
                    onSaved: (data) {
                      password = data;
                    },
                    title: "PASSWORD",
                  ),
                  SizedBox(height: 0.005764 * ScreenSize.height), //5
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: MyColors.darkGrey,
                      onTap: () => showForgetPasswordBottomSheet(context),
                      child: const Text(
                        "Forget your password?",
                        style:
                            TextStyle(fontSize: 18, color: MyColors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.0345849 * ScreenSize.height), //30
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        log(email!);
                        log(password!);
                      }
                    },
                    color: MyColors.purple,
                    title: "Log In",
                  ),
                  SizedBox(height: 0.0345849 * ScreenSize.height), //30
                  Row(
                    children: [
                      const Text(
                        "Need an account? ",
                        style:
                            TextStyle(fontSize: 16, color: MyColors.lightGrey),
                      ),
                      InkWell(
                        splashColor: MyColors.darkGrey,
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 18, color: MyColors.lightBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}