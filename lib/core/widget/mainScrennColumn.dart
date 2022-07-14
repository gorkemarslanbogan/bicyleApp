import 'package:bcyleapp/product/managment/NavigatorManagment.dart';
import 'package:bcyleapp/product/managment/imageUtility.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:bcyleapp/utility/textUtility.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'ElevationButtonWithRadius.dart';


class mainColumnWidget extends StatelessWidget with FirsScreenTextUtility,ScreenSize{
  mainColumnWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    ScreenSize().init(context);
    final List<Widget> columnItems = [
      Expanded(
        child: Image.asset(
          imagePath.jpg("bicyle"),
          fit: BoxFit.fitHeight,
        ),
      ),
       SizedBox(
        height: ScreenSize.dynamicHeight(value: 0.09)
      ),
      const _mainPageTextWidget(title: FirsScreenTextUtility.makeYourRoute, fontweight: FontWeight.w400),
      SizedBox(
        height: ScreenSize.dynamicHeight(value: 0.02),
      ),
     const _mainPageTextWidget(title: FirsScreenTextUtility.route, fontweight: FontWeight.bold),
      Expanded(
        child: Center(
            child: customButtonWidget(
          title: FirsScreenTextUtility.ButtonText,
          textPadding: paddingUtility._buttonSymmetricPadding,
          onPressed: () {
        NavigatorManagment.NavigatePush(context, HomeScreen());
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

class _mainPageTextWidget extends StatelessWidget {
  const _mainPageTextWidget({
    Key? key,
    required this.title, required this.fontweight,
  }) : super(key: key);

  final String title;
  final FontWeight? fontweight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Colors.black,
            fontWeight: fontweight,
          ),
    );
  }
}

class paddingUtility{
  static final EdgeInsets _buttonSymmetricPadding = EdgeInsets.symmetric(vertical: ScreenSize.dynamicHeight(value: 0.02), horizontal: ScreenSize.dynamicWitdh(value: 0.2));
}
