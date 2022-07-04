
import 'package:bcyleapp/view/widget/CustomIconContainer.dart';
import 'package:flutter/material.dart';


Widget customCard(BuildContext context,
    Color color, double boxWidth, double boxHeight, Widget widget) {
  return Card(
    elevation: 0,
    child: ListTile(
      leading: customIconContainer(color, boxWidth, boxHeight, widget: widget),
      title: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 5,
        children: [
         Text(
          "Walk",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
        ),
         Text(
          "Navy Park",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
        ),
      ]),
      trailing: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.end,
        spacing: 5,
        children: [
        Text(
          "2 miles",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18,),
        ),
        Text(
          "oct, 12,2022",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
        ),
      ]),
    ),
  );
}
