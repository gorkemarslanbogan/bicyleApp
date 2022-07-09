import 'package:bcyleapp/core/customCircleAvatar.dart';
import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/app_scaffold_widget.dart';
import 'package:flutter/material.dart';

class TripDetails extends StatelessWidget {
  TripDetails({ Key? key, required this.tripDetails }) : super(key: key);
  final miles = " miles";
 MyTrip tripDetails;
  @override
  Widget build(BuildContext context) {
    return appScaffold(
      widget: Center(child: ListTile(
      leading: const customCircleAvatarWithDottedBorderPackage(),
      title: Text(tripDetails.tripTittle),
      subtitle: Text(tripDetails.miles.toString()+miles),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text(tripDetails.location),
           Text(tripDetails.date),
        ],
      ),
    ),));
  }
}