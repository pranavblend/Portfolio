import 'package:flutter/cupertino.dart';
import 'package:portfolio/screens/largescreen/desktop_layout_page.dart';
import 'package:portfolio/screens/mobile/mobile_layout_screem.dart';

class Homepageui extends StatelessWidget {
  const Homepageui({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(


        builder: (context,constraints){
          if (constraints.maxWidth<495){
            return MobileLayout();
          }
          else {
            return DeskTopLayout();
          }

        }


    );
  }
}
