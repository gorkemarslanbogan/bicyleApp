import 'package:bcyleapp/product/imageUtility.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class customCircleAvatarWithDottedBorderPackage extends StatelessWidget {
  const customCircleAvatarWithDottedBorderPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingUtility.circleAvatarPadding,
      child: DottedBorder(
          borderType: BorderType.Circle,
          strokeWidth: 0.8,
          dashPattern: const [6, 3, 2, 3],
          color: const Color.fromARGB(255, 53, 53, 53),
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              imagePath.jpg("profile"),
            ),
          )),
    );
  }
}

class paddingUtility {
  static const EdgeInsets circleAvatarPadding = EdgeInsets.symmetric(vertical: 5, horizontal: 15);
}