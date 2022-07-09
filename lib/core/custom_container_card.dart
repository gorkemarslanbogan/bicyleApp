import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../product/Container.dart';
import '../utility/screen_size_class.dart';
import 'custom_container.dart';

class customContainerCard extends StatelessWidget {
  const customContainerCard(
      {Key? key,
      required this.colors,
      required this.tripName,
      required this.location,
      required this.milInt})
      : super(key: key);
  final Color colors;
  final tripName;
  final location;
  final milInt;
  IconData _iconBuilder(String tripName) {
    return (tripName.contains("Walk"))
        ? Icons.directions_walk
        : (tripName.contains("Run"))
            ? Icons.run_circle_sharp
            : Icons.directions_bike;
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return SizedBox(
      height: ScreenSize.pageHeight! * 0.30,
      width: ScreenSize.pageHeight! * 0.25,
      child: ContainerWithRadius(
          color: colors,
          widget: _columnWidget(
            colors: colors,
            icon: _iconBuilder(tripName),
            location: location,
            milInt: milInt,
            tripName: tripName,
          )),
    );
  }
}

class _columnWidget extends StatelessWidget {
  const _columnWidget({
    Key? key,
    required this.colors,
    required this.icon,
    required this.tripName,
    required this.location,
    required this.milInt,
  }) : super(key: key);
  final Color colors;
  final tripName;
  final location;
  final milInt;
  final IconData icon;
  static const miles = " Miles";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customIconContainer(
          icon: Icon(
            icon,
            color: colors.withOpacity(0.7),
            size: 35,
          ),
        ),
        Text(
          tripName,
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(
            height: ScreenSize.pageHeight! * 0.05,
            width: ScreenSize.pageHeight! * 0.15,
            child: Card(
              color: const Color.fromARGB(255, 27, 27, 27),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              child: Center(
                child: Text(
                  milInt + miles,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            )),
      ],
    );
  }
}
