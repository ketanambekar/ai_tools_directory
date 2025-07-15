import 'package:ai_tools_directory/views/app_footer/about_page.dart';
import 'package:ai_tools_directory/views/app_footer/privacy_policy_page.dart';
import 'package:ai_tools_directory/views/app_footer/terms_and_conditions_page.dart';
import 'package:ai_tools_directory/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AI Tools Directory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/about', page: () => const AboutPage()),
        GetPage(name: '/privacy-policy', page: () => const PrivacyPolicyPage()),
        GetPage(name: '/terms', page: () => const TermsAndConditionsPage()),
      ],
    );
  }
}