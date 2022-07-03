import 'package:bcyleapp/screen/mainScreen.dart';
import 'package:bcyleapp/utility/textUtility/textUtility.dart';
import 'package:flutter/material.dart';
import 'package:bcyleapp/managmentUtility/AppUtility.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with NavigatorManagment, FirsScreenTextUtility {
  @override
  Widget build(BuildContext context) {
   final List<Widget> columnItems = [
      Text(
        FirsScreenTextUtility.makeYourRoute,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
      ),
      Expanded(
        child: Text(
          FirsScreenTextUtility.route,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Expanded(child: _customButtonWidget()),
      )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bcyle Drive',
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10),
              child: TextButton(
                child: Text(FirsScreenTextUtility.skip,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w300)),
                onPressed: () {
                  NavigatePush(context, HomeScreen());
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(flex: 3, child: Image.asset("assets/images/bicyle.jpg")),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: columnItems,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _customButtonWidget extends StatelessWidget {
  const _customButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20),
        child: Text(FirsScreenTextUtility.ButtonText,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                )),
      ),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}


