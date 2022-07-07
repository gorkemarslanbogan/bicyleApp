import 'package:flutter/material.dart';
import 'custom_container.dart';

class lastTripCard extends StatelessWidget {
  const lastTripCard({ Key? key, required this.icon, required this.color }) : super(key: key);
final Icon icon;
final Color color;
  @override
  Widget build(BuildContext context) {
    List<Text> TittleTextItems = [
      Text(
            "Family Walk",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
      ),];
     List<Text> SubTittleTextItems = [
      Text(
            "Navy Park",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
      ),
       Text(
            "oct, 12.2022",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
      ),
    ];
    return Card(
      elevation: 0,
      child: ListTile(
        leading:  customIconContainer(icon: icon, color: color,),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: TittleTextItems,),
          trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: SubTittleTextItems,),
          subtitle: Text(
            "2 miles",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                )),
      ),
    );
  }
}