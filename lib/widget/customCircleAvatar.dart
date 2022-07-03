import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

Padding customCircleAvatar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: DottedBorder(
          borderType: BorderType.Circle,
          strokeWidth: 0.8,
          dashPattern: [6, 3, 2, 3],
          color: const Color.fromARGB(255, 53, 53, 53),
          padding: const EdgeInsets.all(3),
          child: const CircleAvatar(
            backgroundImage: const AssetImage(
              "assets/images/profile.jpg",
            ) as ImageProvider,
          )),
    );
  }