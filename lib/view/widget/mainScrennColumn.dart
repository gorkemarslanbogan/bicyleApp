import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';
import '../../utility/textUtility.dart';
import 'mainScreenElevationButton.dart';




class mainColumnWidget extends StatelessWidget {
   mainColumnWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    final List<Widget> columnItems = [
  Image.asset(
    "assets/images/bicyle.jpg",
    fit: BoxFit.fitWidth,
    height: ScreenSize.pageHeight!/3,
  ),
  Expanded(
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            FirsScreenTextUtility.makeYourRoute,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
          ),
          Text(
            FirsScreenTextUtility.route,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    ),
  ),
  SizedBox(
    height: 15,
  ),
  Expanded(child: Center(child: Container(child: customButtonWidget()))),
];
   
    return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: columnItems,
      ),
    ),
  );
  }
}

