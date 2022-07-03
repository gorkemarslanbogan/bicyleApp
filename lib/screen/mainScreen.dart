import 'package:bcyleapp/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:bcyleapp/managmentUtility/AppUtility.dart';
import '../utility/textUtility/textUtility.dart';
import '../widget/customCircleAvatar.dart';
import 'mainScreenWidgets.dart';

class HomeScreen extends StatelessWidget with NavigatorManagment,MainScreenTextUtility {
  HomeScreen({Key? key}) : super(key: key);
  List<BottomNavigationBarItem> bottomNavigationItem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: MainScreenTextUtility.home,
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.run_circle), label: MainScreenTextUtility.move,),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings_applications_sharp), label: MainScreenTextUtility.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(items: bottomNavigationItem),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            customCircleAvatar(),],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height*2,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: mainScreenWidget(),
                ),
                scrollBoxwidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 15),
                  child: Text(MainScreenTextUtility.lastTrip,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.black),),
                ),

                customCard(context,Color.fromARGB(255, 247, 243, 9),60,60, Icon(Icons.health_and_safety, size: 30,color: Colors.white,)),
                customCard(context,Colors.blueAccent.shade400,60,60, Icon(Icons.directions_bike_outlined, size: 30,color: Colors.white,)),
                customCard(context,Color.fromARGB(255, 0, 0, 0),60,60, Icon(Icons.directions_run, size: 30,color: Colors.white,)),
              ],
            ),
          ),
        ),
      ),
    );
  }  
}