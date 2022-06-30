// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:get/get.dart';

class FirstPageController extends GetxController {
  var tour = Home(name: "Hello, Odan!").obs;
  var tour1 = Home(name: "Gujarat, India").obs;
  var airplane = Home(name: "Airplane").obs;
  var train = Home(name: "Train").obs;
  var bus = Home(name: "Bus").obs;
  var other = Home(name: "Other").obs;
  var offer = Home(name: "Get Discount \nUp to 30% \nfor hotel \n").obs;
  var categories = Home(name: "Categories").obs;
  var mountains = Home(name: "Mountains").obs;
  var beach = Home(name: "Beach").obs;
  var desert = Home(name: "Desert").obs;
  var recommended = Home(name: "Recommended").obs;
  var seeall = Home(name: "See All").obs;
  var somnath = Home(name: "Somnath").obs;
  var rate = Home(name: "4.4/5").obs;
  var review = Home(name: "(212 Review)").obs;
  var veraval = Home(name: "veraval").obs;
  var KM = Home(name: "225 KM from you").obs;
  var rupee = Home(name: "₹ 13,499").obs;
}

class Home {
  var name;

  Home({
    this.name,
  });
}
