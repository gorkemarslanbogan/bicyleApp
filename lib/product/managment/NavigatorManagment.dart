import 'package:flutter/material.dart';


mixin NavigatorManagment {
  static void NavigatePush(BuildContext context, Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> widget));

  }
 static void NavigatePop(BuildContext context, Widget widget){
    Navigator.of(context).pop(
      MaterialPageRoute(builder: (context) => widget)
    );
  }
  static Future<T?> NavigatePushwithData<T>(BuildContext context, Widget widget) async {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        settings: const RouteSettings(),
        builder: (context) => widget)
    );
    
  }
}
