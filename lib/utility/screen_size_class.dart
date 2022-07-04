import 'package:flutter/material.dart';


class ScreenSize {
late MediaQueryData _mediaQuery;  
static  double? pageHeight;
static  double? pageWidth;
 
 void init(BuildContext context) {
  _mediaQuery = MediaQuery.of(context);
   pageHeight = _mediaQuery.size.height;
   pageWidth = _mediaQuery.size.width;
 }

}