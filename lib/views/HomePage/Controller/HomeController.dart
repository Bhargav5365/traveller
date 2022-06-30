import 'package:get/get.dart';

class HomeController extends GetxController {
  var tour = Trip(name: "Traveller").obs;
  var tour1 = Trip(name: "Enjoy Your Vacation").obs;
  var tour2 = Trip(
          name:
              "Discover new destinationa that you don't \n know but are actually very nice to visit!")
      .obs;
  var tour3 = Trip(name: "Let's Explore").obs;
}

class Trip {
  var name;

  Trip({
    this.name,
  });
}
