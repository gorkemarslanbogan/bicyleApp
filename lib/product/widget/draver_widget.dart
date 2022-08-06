import 'package:bcyleapp/core/widget/customCircleAvatar.dart';
import 'package:bcyleapp/product/managment/NavigatorManagment.dart';
import 'package:bcyleapp/product/managment/cache/shared_managment.dart';
import 'package:bcyleapp/view/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../view/screen/see_all_lastTrip.dart';

class CustomDrawerWidget extends StatelessWidget{
  const CustomDrawerWidget({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         _headerDrawer(),
           Column(
             children: [
               ListTile(
                leading: const Icon(Icons.home_filled, size: 35, color: Colors.amber,),
                title: const Text("Home", style: TextStyle(fontSize: 20),),
                subtitle:  const Divider(),
                onTap: (){
                  NavigatorManagment.NavigatePush(context,  HomeScreen());
                },
               ),
             
                ListTile(
                leading: const Icon(Icons.directions_run_sharp, size: 35, color: Colors.indigo),
                title: const Text("Start Run", style: TextStyle(fontSize: 20),),
                 subtitle:  const Divider(),
                  onTap: (){},
               ),
               ListTile(
                leading: Icon(Icons.fitness_center, size: 35, color: Colors.indigo.shade400,),
                title: const Text("Last Trips", style: TextStyle(fontSize: 20),),
                 subtitle:  const Divider(),
                  onTap: (){
                    NavigatorManagment.NavigatePush(context,  const AllLastTrip());
                  },
               ),
                ListTile(
                leading: Icon(Icons.directions_bike_sharp, size: 35, color: Colors.indigo.shade400,),
                title: const Text("Drive Bike", style: TextStyle(fontSize: 20),),
                 subtitle:  const Divider(),
                  onTap: (){},
               ),
                 ListTile(
                leading: Icon(Icons.account_circle, size: 35, color: Colors.purple.shade400,),
                title: const Text("My Account", style: TextStyle(fontSize: 20),),
                 subtitle:  const Divider(),
                  onTap: (){},
                 ),
                 ListTile(
                leading: const Icon(Icons.info_outline_rounded, size: 35, color: Colors.blue,),
                title: const Text("App information", style: TextStyle(fontSize: 20),),
                 subtitle:  const Divider(),
                  onTap: (){},
                 ),
             ],
           ),
        ],
      ),
    );
  }

}

class _headerDrawer extends StatefulWidget {
  const _headerDrawer({ Key? key }) : super(key: key);

  @override
  State<_headerDrawer> createState() => __headerDrawerState();
}

class __headerDrawerState extends State<_headerDrawer> {

 final title = "Görkem Arslanboğan";
 final welcome = "Hoşgeldin";
 bool _themeButtonValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const customCircleAvatarWithDottedBorderPackage(),
          Text(title, style: GoogleFonts.dmSans(
            fontSize: 20
          ),),
        ],
        ),
        Switch(
          value: _themeButtonValue, 
          activeColor: Colors.amber,
          inactiveTrackColor: Colors.black,
          onChanged: (bool newValue){
           setState(() {
          _themeButtonValue = newValue;
           });
        })
      ],
    );
  }
}