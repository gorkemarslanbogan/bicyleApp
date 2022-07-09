import 'package:flutter/material.dart';

import '../utility/textUtility.dart';
import '../core/customCircleAvatar.dart';


class appScaffold extends StatelessWidget {
   appScaffold({
    Key? key,   required this.widget, this.draverWidget, this.LeadingWidget
  }) : super(key: key);

List<BottomNavigationBarItem> bottomNavigationItem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: HomeScreenTextUtility.home,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.run_circle),
      label: HomeScreenTextUtility.move,
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings_applications_sharp),
        label: HomeScreenTextUtility.settings),
  ];
final Widget widget;
final Widget? draverWidget;
final Widget? LeadingWidget;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      drawer: draverWidget,
      bottomNavigationBar: BottomNavigationBar(items: bottomNavigationItem),
      appBar: AppBar(
        leading: LeadingWidget,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          customCircleAvatarWithDottedBorderPackage(),
        ],
      ),
      body: widget,
    );
  }
}