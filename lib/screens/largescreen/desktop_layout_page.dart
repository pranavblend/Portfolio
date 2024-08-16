import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/experience.dart';
import 'package:portfolio/screens/widgets/myeducation.dart';
import 'package:portfolio/screens/widgets/rotating_image.dart';
import 'package:portfolio/screens/widgets/social_widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themedata = Theme.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.revolver, AppColors.valhalla])),
        padding: EdgeInsets.all(size.width * 0.023),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "pranavudayaraj8882gmail.com",
                            style: themedata.textTheme.bodySmall)),
                    Container(
                      width: size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "About",
                            style: themedata.textTheme.bodyMedium,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Projects",
                            style: themedata.textTheme.bodyMedium,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Skills",
                            style: themedata.textTheme.bodyMedium,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Resume",
                            style: themedata.textTheme.bodyMedium,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Contact",
                            style: themedata.textTheme.bodyMedium,
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.studio),
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Hire Me!!",
                              style: themedata.textTheme.bodyMedium,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07,
                                vertical: size.height * 0.14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("I am Pranav Udayaraj",
                                    style: themedata.textTheme.bodyLarge),
                                GradientText(
                                  "Flutter Developer +\n"
                                  "Graphics Designer",
                                  colors: [
                                    AppColors.studio,
                                    AppColors.paleSlate
                                  ],
                                  style: TextStyle(fontSize: 55),
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Text(
                                      "I am a passionate Flutter developer with a knack for building beautiful and efficient mobile applications that run seamlessly across Android and iOS. With a strong foundation in Dart and a keen eye for UI/UX design, I specialize in creating custom widgets and integrating complex APIs to deliver high-performing, user-friendly apps"),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  hoverColor: AppColors.paleSlate,
                                  child: Container(
                                    width: size.width * 0.5,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      height: 50,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 250,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: AppColors.studio)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Download CV",
                                                    style: TextStyle(
                                                        color:
                                                            AppColors.studio)),
                                                const SizedBox.square(
                                                  dimension: 12,
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.download,
                                                  color: AppColors.studio,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(child: SocialWidgets())
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: size.height * 0.75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [RotatingImageContainer()],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: size.width,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: AppColors.revolver,
                // boxShadow: [BoxShadow(
                //   color: AppColors.studio,
                //   spreadRadius: 2,
                //   blurRadius: 2,
                // )]
              ),

                padding: EdgeInsets.symmetric(vertical: size.width * 0.018),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: GradientText(
                        "My Education",
                        colors: [AppColors.studio, AppColors.paleSlate],
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: size.width*.64,
                            child: Myeducation(size: size)),

                        Container(
                          height: size.height * 0.48,
                          width: size.width * 0.20,
                          decoration: BoxDecoration(boxShadow: [BoxShadow(
                            color: Colors.transparent,
                            spreadRadius: 0,
                            blurRadius: 0,
                          )],
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/lovely-education-concept-with-flat-design copy.png",
                                  ),
                                  fit: BoxFit.cover,opacity: .5),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: AppColors.revolver,
                padding: EdgeInsets.symmetric(vertical: size.width * 0.025),
                child: Column(
                  children: [
                    GradientText(
                      "My Skills",
                      colors: [AppColors.studio, AppColors.paleSlate],
                      style: TextStyle(fontSize: 35),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height * .24,
                          width: size.width * .1,
                          decoration: BoxDecoration(
                              color: AppColors.valhalla,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: size.height * .12,
                                width: size.width * .12,
                                child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/128/9313/9313197.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "C",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: size.height * .24,
                          width: size.width * .1,
                          decoration: BoxDecoration(
                              color: AppColors.valhalla,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: size.height * .12,
                                width: size.width * .12,
                                child: Image.network(
                                    "https://img.icons8.com/?size=48&id=zfHRZ6i1Wg0U&format=png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Figma",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: size.height * .24,
                          width: size.width * .1,
                          decoration: BoxDecoration(
                              color: AppColors.valhalla,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: size.height * .12,
                                width: size.width * .12,
                                child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/128/5210/5210800.png"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Photoshop",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,),

                        Container(
                          height: size.height * .24,
                          width: size.width * .1,
                          decoration: BoxDecoration(
                              color: AppColors.valhalla,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: size.height * .10,
                                width: size.width * .18,
                                child: Image.network(
                                    "https://img.icons8.com/?size=48&id=7AFcZ2zirX6Y&format=png",scale: .1,),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                "Dart",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 50,),
              Container(
                color: AppColors.revolver,
                padding: EdgeInsets.symmetric(vertical: size.width * 0.035),
                child: Column(
                  children: [
                    GradientText(
                      "My Experience",
                      colors: [AppColors.studio, AppColors.paleSlate],
                      style: TextStyle(fontSize: 35),
                    ),
                    Experience(size: size),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
