import 'package:bcyleapp/product/Container.dart';
import 'package:bcyleapp/utility/screen_size_class.dart';
import 'package:flutter/material.dart';

class customIconContainer extends StatelessWidget {
  customIconContainer({Key? key, this.color ,required this.icon,})
      : super(key: key);
  Color? color;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return SizedBox(
      height: ScreenSize.pageHeight! * 0.095,
      width: ScreenSize.pageHeight! * 0.095,
      child: ContainerWithRadius(
        color: color ?? Colors.white,
        widget: icon,
      ),
    );
  }
}
