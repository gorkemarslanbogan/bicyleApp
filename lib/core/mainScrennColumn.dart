import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:bcyleapp/product/NavigatorManagment.dart';
import 'package:flutter/material.dart';
import 'ElevationButtonWithRadius.dart';
import '../utility/textUtility.dart';


class mainColumnWidget extends StatelessWidget with FirsScreenTextUtility, NavigatorManagment {
  mainColumnWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    final List<Widget> columnItems = [
      Expanded(
        child: Image.asset(
          "assets/images/bicyle.jpg",
          fit: BoxFit.fitHeight,
        ),
      ),
       SizedBox(
        height: ScreenSize.pageHeight! * 0.09,
      ),
      Text(
        FirsScreenTextUtility.makeYourRoute,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
      ),
      SizedBox(
        height: ScreenSize.pageHeight! * 0.02,
      ),
      Text(
        FirsScreenTextUtility.route,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
      ),
      Expanded(
        child: Center(
            child: customButtonWidget(
          title: FirsScreenTextUtility.ButtonText,
          textPadding: EdgeInsets.symmetric(vertical: ScreenSize.pageHeight! * 0.02, horizontal: ScreenSize.pageWidth! * 0.2),
          onPressed: () {
        NavigatePush(context, HomeScreen());
          },
        )),
      ),
    ];
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: columnItems,
    );
  }
}
