
import 'package:bcyleapp/core/theme/theme.dart';
import 'package:bcyleapp/core/widget/customCircleAvatar.dart';
import 'package:bcyleapp/utility/textUtility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managment/cache/shared_managment.dart';
import '../provider/ThemeProvider.dart';



class appScaffold extends StatefulWidget {
   appScaffold({
    Key? key,   required this.widget, this.draverWidget, this.LeadingWidget
  }) : super(key: key);

final Widget widget;
final Widget? draverWidget;
final Widget? LeadingWidget;

  @override
  State<appScaffold> createState() => _appScaffoldState();
}

class _appScaffoldState extends State<appScaffold> {
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
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bcyle Drive',
       theme: context.watch<ThemeProvider>().currentTheme,
      home: Scaffold(
        drawer: widget.draverWidget,
        bottomNavigationBar: BottomNavigationBar(items: bottomNavigationItem),
        appBar: AppBar(
          leading: widget.LeadingWidget,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [
            customCircleAvatarWithDottedBorderPackage(),
          ],
        ),
        body: widget.widget,
      ),
    );
  }
}