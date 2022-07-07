import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';



class ContainerWithRadius extends StatelessWidget {
  const ContainerWithRadius({Key? key, required this.color, required this.widget,}) : super(key: key);
final Color color;
final Widget? widget;
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: color,
    ),
    child: widget,
    );
  }
}