import 'package:bcyleapp/managmentUtility/AppUtility.dart';
import 'package:bcyleapp/view/screen/mainScreen.dart';
import 'package:flutter/material.dart';
import '../../utility/textUtility.dart';

class customButtonWidget extends StatelessWidget with NavigatorManagment{
  const customButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20),
        child: Text(FirsScreenTextUtility.ButtonText,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                )),
      ),
      onPressed: (){NavigatePush(context, HomeScreen());} ,
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
