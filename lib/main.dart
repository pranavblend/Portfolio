import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/demo.dart';
import 'package:portfolio/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: GoogleFonts.poppins(color: Colors.white,fontSize: 12),
          bodyMedium: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
          bodyLarge: GoogleFonts.poppins(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w700)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepageui()
    );
  }
}
