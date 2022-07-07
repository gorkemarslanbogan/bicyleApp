import 'package:flutter/material.dart';


mixin NavigatorManagment {
  void NavigatePush(BuildContext context, Widget widget){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=> widget)
    );
  }
  void NavigatePop(BuildContext context, Widget widget){
    Navigator.of(context).pop(
      MaterialPageRoute(builder: (context) => widget)
    );
  }
  Future<T?> NavigatePushwithData<T>(BuildContext context, Widget widget) async {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        settings: RouteSettings(),
        builder: (context) => widget)
    );
    
  }
}

mixin appPadding {
  static const appbarHorizontalPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  static const generalPadding = EdgeInsets.only(left:15, top: 20);
  static const textPadding = EdgeInsets.only(right:10, top: 10,);
}