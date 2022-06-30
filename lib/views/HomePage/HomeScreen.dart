// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveller/views/FirstPage/FirstScreen.dart';

import 'Controller/HomeController.dart';

class HomePage extends StatelessWidget {
  HomeController myController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.10,
              ),
              child: Obx(() => Text(
                    "${myController.tour.value.name}",
                    style: TextStyle(fontSize: 45),
                  )),
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Container(
              height: screenSize.height * 0.30,
              width: screenSize.width,
              child: Image.asset(
                "assets/images/jpg/travel.jpg",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Obx(() => Text(
                  "${myController.tour1.value.name}",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: screenSize.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Obx(() => Text(
                    "${myController.tour2.value.name}",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: screenSize.height * 0.06,
            ),
            GestureDetector(
              child: Container(
                height: screenSize.height * 0.07,
                width: screenSize.width * 0.70,
                child: Center(
                  child: Obx(() => Text(
                        "${myController.tour3.value.name}",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.blueGrey[300],
                ),
              ),
              onTap: () {
                Get.to(FirstScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
