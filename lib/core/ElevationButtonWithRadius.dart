import 'package:bcyleapp/product/NavigatorManagment.dart';
import 'package:flutter/material.dart';

class customButtonWidget extends StatelessWidget with NavigatorManagment {
  customButtonWidget({
    Key? key,
    required this.title, required this.onPressed, required this.textPadding,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;
  final EdgeInsets textPadding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: textPadding,
        child: Text(title,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                )),
      ),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
