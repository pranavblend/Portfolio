import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';

class Myeducation extends StatefulWidget {
  final Size size;
  const Myeducation({super.key, required this.size});

  @override
  State<Myeducation> createState() => _MyeducationState();
}

class _MyeducationState extends State<Myeducation> {
  List<bool> _isHovered = [false, false, false];
  List _icon = [
    Icons.bed,
    Icons.chair_alt,
    Icons.chair_rounded,

  ];
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
              margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.015),
              height: widget.size.height * 0.18,
              width: widget.size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: _isHovered[index]
                        ? AppColors.studio.withOpacity(.5)
                        : Colors.transparent),
                gradient: _isHovered[index]
                    ? LinearGradient(
                        colors: [AppColors.studio, AppColors.valhalla])
                    : null,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.graduationCap,color: Colors.white,size: 22,)))
                ],
              ),
            ),
          );
        });
  }
}
