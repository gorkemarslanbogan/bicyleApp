import 'package:bcyleapp/core/widget/customCircleAvatar.dart';
import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/managment/imageUtility.dart';
import 'package:bcyleapp/product/widget/app_scaffold_widget.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';

class TripDetails extends StatelessWidget {
  TripDetails({ Key? key, required this.tripDetails }) : super(key: key);
  final miles = " miles";
 MyTrip tripDetails;
  @override
  Widget build(BuildContext context) {
    return appScaffold(
      widget: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: Image.asset(imagePath.jpg("maps"), fit: BoxFit.fill)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.shrink(),
              Container(
                height: ScreenSize.dynamicHeight(value: 0.35),
                width: ScreenSize.dynamicWitdh(),
                decoration: BoxDecoration(
                   color: Colors.amber.withOpacity(0.8),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                ),
                child: _tripDetail(),
              )
            ],
          ),
        ],
      ));
  }

  ListTile _tripDetail() {
    return ListTile(
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
  );
  }
}