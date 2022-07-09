
import 'package:bcyleapp/core/custom_card_trips.dart';
import 'package:bcyleapp/product/app_scaffold_widget.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:bcyleapp/product/NavigatorManagment.dart';
import 'package:flutter/material.dart';


class AllLastTrip extends StatelessWidget{
  const AllLastTrip({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appScaffold(widget: Center(child: lastTripCardBuilder(),), LeadingWidget: IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded), onPressed: (){
      NavigatorManagment.NavigatePush(context, HomeScreen());
      },),);
  }
}