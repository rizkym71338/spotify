import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:spotify/app/routes/app_pages.dart';

import '../controllers/choose_mode_controller.dart';

class ChooseModeView extends GetView<ChooseModeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_choose_mode.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 60,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/spotify_logo.png",
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Choose Mode",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDADADA),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 73,
                              height: 73,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(0.15),
                                borderRadius: BorderRadius.circular(99),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icons/moon.png",
                                  fit: BoxFit.contain,
                                  width: 36,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Dark Mode",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDADADA),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 73,
                              height: 73,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(0.15),
                                borderRadius: BorderRadius.circular(99),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icons/sun.png",
                                  fit: BoxFit.contain,
                                  width: 36,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              "Light Mode",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDADADA),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.INTRODUCTION),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF42C83C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF6F6F6),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
