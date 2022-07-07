import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../product/Container.dart';
import '../utility/screen_size_class.dart';
import 'custom_container.dart';

class customContainerCard extends StatelessWidget {
  const customContainerCard(
      {Key? key, required this.colors, required this.icon})
      : super(key: key);
  final Color colors;
  final IconData icon;
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
            icon: icon,
          )),
    );
  }
}

class _columnWidget extends StatelessWidget {
  const _columnWidget({
    Key? key,
    required this.colors,
    required this.icon,
  }) : super(key: key);
  final Color colors;
  final IconData icon;
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
          
          "Family Walk",
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        Text(
          "Navya Park oct",
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
                  "4.1 Miles",
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
