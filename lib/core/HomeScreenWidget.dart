import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';
import '../utility/textUtility.dart';

class ColumnWidgetHomeScreen extends StatelessWidget
    with HomeScreenTextUtility {
  const ColumnWidgetHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    List<Widget> columnItems = [
      Text(
        HomeScreenTextUtility.drove,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
      ),
      SizedBox(
        height: ScreenSize.pageWidth! * 0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            HomeScreenTextUtility.milInformation,
            style: Theme.of(context).textTheme.headline3?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(
            width: ScreenSize.pageWidth! * 0.03,
          ),
          Text(
            HomeScreenTextUtility.miles,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
      SizedBox(
        height: ScreenSize.pageWidth! * 0.02,
      ),
      Text(
        HomeScreenTextUtility.lastdriveInformation,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
      ),
     const SizedBox(height: 20),
      Text(
        HomeScreenTextUtility.forYou,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
      ),
        const SizedBox(height: 20),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnItems,
    );
  }
}
