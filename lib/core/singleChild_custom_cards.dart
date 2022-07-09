import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';

import 'custom_container_card.dart';


class custom_cards extends StatelessWidget with ScreenSize {
   custom_cards({
    Key? key,
  }) : super(key: key);

List<MyTrip> item = [
  MyTrip("Family Walk", 4, "Navy Park", "oct 12.2022"),
  MyTrip("Run", 6, "Centerl Park", "nov 09.2022"),
  MyTrip("Bcyle Drive", 4, "Miami Park", "sep 24.2022"),
];
List<Color> colorSheme = [
  Colors.amber,
  Colors.indigo.shade400,
  Colors.blue.shade400
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: ((context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: customContainerCard(colors:  colorSheme[index],tripName: item[index].tripTittle,milInt: item[index].miles.toString(),location: item[index].location, ),
      );
    }));
  }
}
