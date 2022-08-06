import 'package:bcyleapp/product/lottie/lottie-path.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSplahs extends StatefulWidget {
  const LottieSplahs({Key? key}) : super(key: key);

  @override
  State<LottieSplahs> createState() => _LottieSplahsState();
}

class _LottieSplahsState extends State<LottieSplahs> {
  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      "assets/lottie/drive_Bike.json",
      fit: BoxFit.contain,
      );
  }
}
