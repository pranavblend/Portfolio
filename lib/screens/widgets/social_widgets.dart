import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';

class SocialWidgets extends StatelessWidget {
  const SocialWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.studio)
          ),
          child: Center(
            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.linkedinIn,color: AppColors.studio,size: 15,),hoverColor: AppColors.paleSlate,),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio)
          ),
          child: Center(
            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.dribbble,color: AppColors.studio,size: 15,),hoverColor: AppColors.paleSlate,),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio)
          ),
          child: Center(
            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.instagram,color: AppColors.studio,size: 15,),hoverColor: AppColors.paleSlate,),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio)
          ),
          child: Center(
            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.github,color: AppColors.studio,size: 15,),hoverColor: AppColors.paleSlate,),
          ),
        )





      ],
    );
  }
}
