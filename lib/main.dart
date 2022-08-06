import 'package:bcyleapp/core/widget/mainScrennColumn.dart';
import 'package:bcyleapp/product/lottie/lottie-path.dart';
import 'package:bcyleapp/product/managment/cache/shared_managment.dart';
import 'package:bcyleapp/utility/textUtility.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/theme.dart';
import 'product/managment/NavigatorManagment.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) {
    runApp(
      
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),  
      ),
    );
  }
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppUtility.appName,
       theme: BcyleLightTheme().lightTheme,
      home: Scaffold(
        appBar: _appBarWidget(context),
        body: mainColumnWidget(),
      ),
    );
  }

  AppBar _appBarWidget(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 10),
          child: TextButton(
            child: Text(FirsScreenTextUtility.skip,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.black87, fontWeight: FontWeight.w300)),
            onPressed: () {
              NavigatorManagment.NavigatePush(context, HomeScreen());
            },
          ),
        ),
      ],
    );
  }
}
