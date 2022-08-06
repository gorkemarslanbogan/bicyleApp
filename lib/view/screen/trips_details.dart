import 'package:bcyleapp/core/widget/customCircleAvatar.dart';
import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/managment/imageUtility.dart';
import 'package:bcyleapp/product/widget/app_scaffold_widget.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';

class TripDetails extends StatelessWidget{
  TripDetails({ Key? key, required this.tripDetails }) : super(key: key);
  final miles = " miles";
 MyTrip tripDetails;
  @override
  Widget build(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(imagePath.jpg("maps")))),
          _tripDetail(),
        ],
      );
  }

  ListTile _tripDetail() {
    return ListTile(
        leading: const customCircleAvatarWithDottedBorderPackage(),
        title: Text(tripDetails.tripTittle ?? ""),
        subtitle: Text(tripDetails.miles.toString()+miles),
        trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text(tripDetails.location ?? ""),
           Text(tripDetails.date ?? ""),
        ],
        ),
  );
  }
}