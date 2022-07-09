import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/NavigatorManagment.dart';
import 'package:bcyleapp/product/random_color.dart';
import 'package:flutter/material.dart';
import '../view/screen/trips_details.dart';
import 'custom_container.dart';

class lastTripCardBuilder extends StatelessWidget {
  lastTripCardBuilder({
    Key? key,
  }) : super(key: key);
  List<MyTrip> item = [MyTrip("Family Walk", 4, "Navy Park", "oct 12.2022"),
MyTrip("Family Walk", 4, "Navy Park", "oct 12.2022"),
MyTrip("Run", 6, "Centerl Park", "nov 09.2022"),
MyTrip("Bcyle Drive", 4, "Miami Park", "sep 24.2022"),
MyTrip("Walk", 2, "Orlando Center", "dec 22.2023"),
];
  Icon _iconBuilder(String tripName) {
    return Icon((tripName.contains("Walk")) ? Icons.directions_walk
    :(tripName.contains("Run")) ? Icons.run_circle_sharp : Icons.directions_bike, color: Colors.white,);
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: item.length,
      itemBuilder: ((context, index) {
      return Card(
      elevation: 0,
      child: ListTile(
        onTap: (){
          NavigatorManagment.NavigatePushwithData(context, TripDetails(tripDetails: item[index],));
        },
        leading:  customIconContainer(icon: _iconBuilder(item[index].tripTittle),  color:  RandomColor.Rcolor(),),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              _customCardTextWidget(title: item[index].tripTittle),
          ],),
          trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _customCardTextWidget(title: item[index].location),
           _customCardTextWidget(title: item[index].date),
          ],),
          subtitle: _customCardTextWidget(title: item[index].miles.toString()+" miles"),
      ),
    );
    }));
  }
  
}

class _customCardTextWidget extends StatelessWidget {
  const _customCardTextWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ));
  }
}
