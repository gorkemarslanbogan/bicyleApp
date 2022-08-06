import 'package:flutter/material.dart';

mixin customSheetWidget {
  Future<T?> SheetWidget<T>(BuildContext context, Widget child, bool scrolEnable) async {
    return await showModalBottomSheet(
              isScrollControlled: scrolEnable,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(35.0, 35.0),
              )),
              context: context,
              builder: (context) {
                return _customSheet(child: child,);
              });
  }
}

class _customSheet extends StatelessWidget {
   _customSheet({ Key? key, required this.child }) : super(key: key);
  Color _backgroundColor = Colors.black;
  final  Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: Column(
        children: [
          const SheetWidgetHeader(),
          Expanded(child: child)
        ],
      ),
    ); 
  }
}

class SheetWidgetHeader extends StatelessWidget {
  const SheetWidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close))),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.45),
            child: Divider(thickness: 3),
          ),
        ],
      ),
    );
  }
}
