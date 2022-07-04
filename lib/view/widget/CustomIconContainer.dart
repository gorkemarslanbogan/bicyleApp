import 'package:flutter/material.dart';

Widget customContainer(Color colors, Color iconColor, double width,
    double height, String data, String data1, String data2, Icon icon) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(const Radius.circular(20)),
      color: colors,
    ),
    child: Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        spacing: 25,
        children: [
          customIconContainer(iconColor, 50, 50, widget: icon),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                data,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
              ),
              Text(
                data1,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 31, 31),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                data2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget customIconContainer(Color colors, double width, double height,
    {Widget? widget}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(const Radius.circular(20)),
      color: colors,
    ),
    child: widget,
  );
}
