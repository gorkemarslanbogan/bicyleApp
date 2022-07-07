import 'package:bcyleapp/core/custom_card_trips.dart';
import 'package:flutter/material.dart';

class LastTripList extends StatelessWidget {
  const LastTripList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics:  NeverScrollableScrollPhysics(),
      children:  [
       const lastTripCard(icon: Icon(Icons.directions_walk,color: Colors.white,), color: Colors.blueAccent,),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 8.0),
         child: lastTripCard(icon: const Icon(Icons.directions_bike,color: Colors.white,), color: Colors.indigo.shade400,),
       ),
        const lastTripCard(icon: Icon(Icons.run_circle_sharp,color: Colors.white,), color: Colors.black,),
        Padding(
         padding: const EdgeInsets.symmetric(vertical: 8.0),
         child: lastTripCard(icon: const Icon(Icons.directions_bike,color: Colors.white,), color: Colors.indigo.shade400,),
       ),
        const lastTripCard(icon: Icon(Icons.run_circle_sharp,color: Colors.white,), color: Colors.black,),
      ],
    );
  }
}

