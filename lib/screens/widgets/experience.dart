import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Experience extends StatefulWidget {
  final Size size;
  const Experience({super.key,required this.size});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  List<bool> _isHovered = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) => setState(() => _isHovered[index] = true),
            onExit: (_) => setState(() => _isHovered[index] = false),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              margin:
              EdgeInsets.symmetric(horizontal: widget.size.width * 0.015),
              height: widget.size.height * 0.18,
              width: widget.size.width,
              decoration: BoxDecoration(
                border: Border.all(color: _isHovered[index]?AppColors.studio.withOpacity(.5):Colors.transparent),
                gradient: _isHovered[index]?LinearGradient(colors: [AppColors.studio,AppColors.valhalla]):null,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ],
              ),
            ),
          );
        });
  }
}
