import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:bcyleapp/view/screen/see_all_lastTrip.dart';
import 'package:flutter/material.dart';
import 'package:bcyleapp/product/NavigatorManagment.dart';
import '../../product/app_scaffold_widget.dart';
import '../../core/last_trip_list.dart';
import '../../core/singleChild_custom_cards.dart';
import '../../utility/textUtility.dart';
import '../../core/HomeScreenWidget.dart';

class HomeScreen extends StatefulWidget
    with NavigatorManagment, HomeScreenTextUtility {
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
        home: appScaffold(widget: const _HomeScreenWidgetTree(), draverWidget: Drawer(child: Center(child: Text("Hello World"))),));
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
        height: ScreenSize.pageHeight!,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ColumnWidgetHomeScreen(),
              SizedBox(
                  height: ScreenSize.pageHeight! * 0.3,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: custom_cards())),
              const SizedBox(
                height: 20,
              ),
              const _lastTripInformation(),
              SizedBox(
                  height: ScreenSize.pageHeight! * 0.5, child: const LastTripList())
            ],
          ),
        ),
      ),
    );
  }
}

class _lastTripInformation extends StatelessWidget with NavigatorManagment {
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
              NavigatePush(context,  AllLastTrip());
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
