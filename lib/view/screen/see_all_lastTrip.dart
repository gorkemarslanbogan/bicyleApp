
import 'package:bcyleapp/product/app_scaffold_widget.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:bcyleapp/product/NavigatorManagment.dart';
import 'package:flutter/material.dart';

import '../../core/last_trip_list.dart';


class AllLastTrip extends StatelessWidget with NavigatorManagment {
  const AllLastTrip({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appScaffold(widget: const Center(child: LastTripList(),), LeadingWidget: IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded), onPressed: (){
      NavigatePush(context, HomeScreen());
      },),);
  }
}