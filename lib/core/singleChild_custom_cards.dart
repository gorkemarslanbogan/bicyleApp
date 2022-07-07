import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';

import 'custom_container_card.dart';


class custom_cards extends StatelessWidget with ScreenSize {
   custom_cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const customContainerCard(colors:  Colors.blueAccent, icon: Icons.directions_walk,),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10),
          child: customContainerCard(colors:  Colors.indigo.shade400, icon: Icons.directions_bike,),
        ),
        customContainerCard(colors:Colors.yellow.shade400, icon: Icons.run_circle_sharp,),
      ],
    );
  }
}