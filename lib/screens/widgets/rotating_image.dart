import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({super.key});

  @override
  State<RotatingImageContainer> createState() => _RotatingImageContainerState();
}

class _RotatingImageContainerState extends State<RotatingImageContainer> {
  bool isHovere = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.48,
      width: size.width * 0.20,
      decoration: BoxDecoration(boxShadow: [BoxShadow(
        color: AppColors.revolver,
        spreadRadius: 4,
        blurRadius: 20,
      )],
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Picture.jpg",
              ),
              fit: BoxFit.cover),
          border: Border.all(color: AppColors.studio.withOpacity(.5)),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
