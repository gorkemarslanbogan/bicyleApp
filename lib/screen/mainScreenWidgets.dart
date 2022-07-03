import 'package:bcyleapp/managmentUtility/AppUtility.dart';
import 'package:bcyleapp/utility/textUtility/textUtility.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../widget/CustomIconContainer.dart';

class mainScreenWidget extends StatefulWidget {
  const mainScreenWidget({Key? key}) : super(key: key);

  @override
  State<mainScreenWidget> createState() => _mainScreenWidgetState();
}

class _mainScreenWidgetState extends State<mainScreenWidget>
    with NavigatorManagment, MainScreenTextUtility {
  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    double pagewidth = MediaQuery.of(context).size.width;
    return mainScreenWidget(context, pagewidth);
  }

  Widget mainScreenWidget(BuildContext context, double pagewidth) {
    return Padding(
      padding: EdgeInsets.only(right: pagewidth * 0.3),
      child: Wrap(
        runAlignment: WrapAlignment.start,
        direction: Axis.vertical,
        spacing: 5,
        runSpacing: 5,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Text(
            MainScreenTextUtility.drove,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.black),
            textAlign: TextAlign.left,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10,
            children: [
              Expanded(
                child: Text(
                  MainScreenTextUtility.milInformation,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Expanded(
                  child: Text(
                    MainScreenTextUtility.miles,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Text(
              MainScreenTextUtility.lastdriveInformation,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Expanded(
              child: Text(
                MainScreenTextUtility.forYou,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class scrollBoxwidget extends StatelessWidget {
  scrollBoxwidget({
    Key? key,
  }) : super(key: key);
  List<Widget> items = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
      child: Expanded(
        child: customContainer(Color.fromARGB(255, 216, 171, 36), Color.fromARGB(255, 255, 255, 255),220, 230, "Family Walk", "Navy Park, oct", "4.1 miles", Icon(Icons.health_and_safety))),),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
      child: Expanded(
        child: customContainer(Color.fromARGB(255, 107, 214, 233), Color.fromARGB(255, 255, 255, 255),220, 230, "Training", "Seaatle Park, oct", "15 miles", Icon(Icons.directions_bike_outlined,color: Colors.lightBlue.shade400,),),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
      child: Expanded(
        child: customContainer(Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 255, 255, 255),220, 230, "Wolk", "Seaatle Park, oct", "2.8 miles", Icon(Icons.directions_walk_outlined,color: Color.fromARGB(255, 0, 0, 0),),),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: items,
        ),
      ),
    );
  }
}
