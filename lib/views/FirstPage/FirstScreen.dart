// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/FirstController.dart';

class FirstScreen extends StatelessWidget {
  FirstPageController myController = Get.put(FirstPageController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          title: ListTile(
            title: Obx(() => Text(
                  "${myController.tour.value.name}",
                  style: TextStyle(color: Colors.deepPurple),
                )),
            subtitle: Obx(() => Text(
                  "${myController.tour1.value.name}",
                  style: TextStyle(color: Colors.deepPurple),
                )),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.notifications,
                color: Colors.deepPurple[200],
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              child: Image.asset(
                "assets/images/jpg/user.png",
                fit: BoxFit.fill,
              ),
              foregroundColor: Colors.transparent,
            ),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: screenSize.width,
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Container(
                height: screenSize.height * 0.04,
                width: screenSize.width * 0.60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        1.0,
                        3.0,
                      ),
                      blurRadius: 7.0,
                    ), //BoxShadow
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Where do you want to go?',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff707070),
                    ),
                    prefixIcon: GestureDetector(
                      onTap: () {
                        print('Search Buttons');
                      },
                      child: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: screenSize.height * 0.12,
                      width: screenSize.width * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.18,
                            child: Image.asset("assets/images/jpg/Plane.png"),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 7.0,
                                ), //BoxShadow
                              ],
                              color: Colors.orange[100],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.005,
                          ),
                          Obx(() => Text(
                                "${myController.airplane.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.12,
                      width: screenSize.width * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.18,
                            child: Image.asset("assets/images/jpg/Train.png"),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.orange[100],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 7.0,
                                ), //BoxShadow
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.005,
                          ),
                          Obx(() => Text(
                                "${myController.train.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.12,
                      width: screenSize.width * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.18,
                            child: Image.asset("assets/images/jpg/Bus.png"),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.orange[100],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 7.0,
                                ), //BoxShadow
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.005,
                          ),
                          Obx(() => Text(
                                "${myController.bus.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.12,
                      width: screenSize.width * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.orange[100],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 7.0,
                                ), //BoxShadow
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.005,
                          ),
                          Obx(() => Text(
                                "${myController.other.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1524946274118-e7680e33ccc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80'),
                                    fit: BoxFit.cover),
                              ),
                              height: screenSize.height * 0.16,
                              width: screenSize.width * 0.830,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(() => Text(
                                          "${myController.offer.value.name}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 20),
                                        )),
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1524946274118-e7680e33ccc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80'),
                                    fit: BoxFit.cover),
                              ),
                              height: screenSize.height * 0.16,
                              width: screenSize.width * 0.830,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(() => Text(
                                          "${myController.offer.value.name}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 20),
                                        )),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        "${myController.categories.value.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: screenSize.height * 0.05,
                      width: screenSize.width * 0.30,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              1.0,
                              3.0,
                            ),
                            blurRadius: 7.0,
                          ), //BoxShadow
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset(
                              "assets/images/jpg/mountain.png",
                              fit: BoxFit.fill,
                            ),
                            foregroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          Obx(() => Text(
                                "${myController.mountains.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.01,
                    ),
                    Container(
                      height: screenSize.height * 0.05,
                      width: screenSize.width * 0.30,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              1.0,
                              3.0,
                            ),
                            blurRadius: 7.0,
                          ), //BoxShadow
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset(
                              "assets/images/jpg/beach.png",
                              fit: BoxFit.fill,
                            ),
                            foregroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          Obx(() => Text(
                                "${myController.beach.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.01,
                    ),
                    Container(
                      height: screenSize.height * 0.05,
                      width: screenSize.width * 0.30,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              1.0,
                              3.0,
                            ),
                            blurRadius: 7.0,
                          ), //BoxShadow
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset(
                              "assets/images/jpg/desert.png",
                              fit: BoxFit.fill,
                            ),
                            foregroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.02,
                          ),
                          Obx(() => Text(
                                "${myController.desert.value.name}",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        "${myController.recommended.value.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Obx(() => Text(
                            "${myController.seeall.value.name}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            height: screenSize.height * 0.27,
                            width: screenSize.width * 0.35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(110),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 6.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.somnath.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rate.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenSize.width * 0.01,
                                        ),
                                        Obx(
                                          () => Text(
                                            "${myController.review.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.veraval.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.KM.value.name}",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 2),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rupee.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            bottom: 100,
                            right: 0,
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.redbull.com/images/c_crop,x_0,y_0,h_3000,w_4500/c_fill,w_860,h_573/q_auto,f_auto/redbullcom/2019/05/14/56a40547-4b33-41cb-ae84-fcb90d74bf75/mikey-brennan-red-bull-cape-fear-2019-shipstern-bluff',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.04,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            height: screenSize.height * 0.27,
                            width: screenSize.width * 0.35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(110),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 6.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.somnath.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rate.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenSize.width * 0.01,
                                        ),
                                        Obx(
                                          () => Text(
                                            "${myController.review.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.veraval.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.KM.value.name}",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 2),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rupee.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            bottom: 100,
                            right: 0,
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.redbull.com/images/c_crop,x_0,y_0,h_3000,w_4500/c_fill,w_860,h_573/q_auto,f_auto/redbullcom/2019/05/14/56a40547-4b33-41cb-ae84-fcb90d74bf75/mikey-brennan-red-bull-cape-fear-2019-shipstern-bluff',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.04,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            height: screenSize.height * 0.27,
                            width: screenSize.width * 0.35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(110),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    3.0,
                                  ),
                                  blurRadius: 6.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 120),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.somnath.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rate.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenSize.width * 0.01,
                                        ),
                                        Obx(
                                          () => Text(
                                            "${myController.review.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.veraval.value.name}",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.KM.value.name}",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 2),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => Text(
                                            "${myController.rupee.value.name}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            bottom: 100,
                            right: 0,
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.redbull.com/images/c_crop,x_0,y_0,h_3000,w_4500/c_fill,w_860,h_573/q_auto,f_auto/redbullcom/2019/05/14/56a40547-4b33-41cb-ae84-fcb90d74bf75/mikey-brennan-red-bull-cape-fear-2019-shipstern-bluff',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.home),
              Spacer(),
              Icon(
                Icons.note_add,
              ),
              Spacer(),
              Icon(Icons.favorite_border),
              Spacer(),
              Icon(Icons.person_outline),
            ],
          ),
        ),
      ),
    );
  }
}
