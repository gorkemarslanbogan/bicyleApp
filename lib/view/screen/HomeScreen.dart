import 'package:bcyleapp/core/widget/HomeScreenWidget.dart';
import 'package:bcyleapp/core/widget/custom_card_trips.dart';
import 'package:bcyleapp/core/widget/singleChild_custom_cards.dart';
import 'package:bcyleapp/product/managment/NavigatorManagment.dart';
import 'package:bcyleapp/product/widget/app_scaffold_widget.dart';
import 'package:bcyleapp/product/widget/draver_widget.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:bcyleapp/view/screen/see_all_lastTrip.dart';
import 'package:flutter/material.dart';
import '../../utility/textUtility.dart';


class HomeScreen extends StatefulWidget with HomeScreenTextUtility {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  

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
        home: appScaffold(widget: const _HomeScreenWidgetTree(), draverWidget: const CustomDrawerWidget()));
  }
}



class _HomeScreenWidgetTree extends StatelessWidget {
  

  const _HomeScreenWidgetTree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility().generalSymetricPadding,
      child: SizedBox(
        height: ScreenSize.dynamicHeight(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ColumnWidgetHomeScreen(),
              SizedBox(
                  height: ScreenSize.dynamicHeight(value: 0.3),
                  child: custom_cards()),
              const SizedBox(
                height: 20,
              ),
              const _lastTripInformation(),
              SizedBox(
                height: ScreenSize.dynamicHeight(value: 0.35),
                child: lastTripCardBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}

class _lastTripInformation extends StatelessWidget{
  const _lastTripInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(HomeScreenTextUtility.lastTrip,
            style:
                Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
        TextButton(
            onPressed: () {
              NavigatorManagment.NavigatePush(context,  const AllLastTrip());
            },
            child: Text(
              "See All",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(
                    color: Colors.blue,
                  ),
            ))
      ],
    );
  }
}

class PaddingUtility {
  final EdgeInsets generalSymetricPadding =
      const EdgeInsets.symmetric(horizontal: 15, vertical: 15);
}
