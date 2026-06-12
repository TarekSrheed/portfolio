import 'package:flutter/material.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/features/view/widgets/container_item.dart';
import 'package:portfolio/features/view/widgets/gradient_text.dart';

class AboutMeSection extends StatelessWidget {
  final double width;
  final double height;
  final bool isMobile;
  final bool isTablet;
  const AboutMeSection({
    super.key,
    required this.width,
    required this.height,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          containerItem(
            context,
            height: 420,
            width: width * 0.9,
            children: [
              GradientText(
                text: 'EDUCATION',
                fontWeight: FontWeight.w400,
                fontSize: isMobile ? 20 : (isTablet ? 22 : 26),
              ),
              Text(
                degree,
                style: h3Style.copyWith(fontSize: isMobile ? 14 : null),
              ),
              Text(
                university,
                style: h3Style.copyWith(
                    fontSize: isMobile ? 15 : null,
                    fontWeight: FontWeight.w400),
              ),
              GradientText(
                text: 'Professional Summary',
                fontWeight: FontWeight.w400,
                fontSize: isMobile ? 18 : (isTablet ? 22 : 26),
              ),
              Text(
                aboutMeSummary,
                style: contentStyle.copyWith(fontSize: isMobile ? 12.5 : null),
              ),
            ],
          ),
          const SizedBox(height: 15),
          containerItem(
            context,
            height: 300,
            width: width * 0.9,
            children: [
              GradientText(
                text: 'Technical Skills',
                fontWeight: FontWeight.w400,
                fontSize: isMobile ? 20 : (isTablet ? 22 : 26),
              ),
              Text(
                aboutMeSkills,
                style: contentStyle.copyWith(fontSize: isMobile ? 13 : null),
              ),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          containerItem(
            context,
            height: isTablet ? 430 : 430,
            width: isTablet ? width * 0.55 : width * 0.6,
            children: [
              GradientText(
                  text: 'EDUCATION',
                  fontWeight: FontWeight.w400,
                  fontSize: isTablet ? 22 : 26),
              Text(degree,
                  style: h3Style.copyWith(fontSize: isTablet ? 17 : 20)),
              Text('Ittihad Private University',
                  style: h3Style.copyWith(fontSize: isTablet ? 17 : 21)),
              GradientText(
                  text: 'Professional Summary',
                  fontWeight: FontWeight.w400,
                  fontSize: isTablet ? 22 : 26),
              Text(
                aboutMeSummary,
                style: contentStyle.copyWith(fontSize: isTablet ? 15 : null),
              ),
            ],
          ),
          SizedBox(width: width * 0.01),
          containerItem(
            context,
            height: isTablet ? 430 : 430,
            width: isTablet ? width * 0.35 : width * 0.3,
            children: [
              GradientText(
                text: 'Technical Skills',
                fontWeight: FontWeight.w400,
                fontSize: isTablet ? 22 : 26,
              ),
              Text(
                aboutMeSkills,
                style: contentStyle.copyWith(fontSize: isTablet ? 14 : null),
              ),
            ],
          ),
        ],
      );
    }
  }
}

String aboutMeSkills =
    '''• Development: Flutter Framework, Dart, Native Android Core, C++.
• State Management: BLoC / Cubit, Riverpod, GetX...
• Architecture & Clean Code: Clean Architecture, MVVM Design Patterns, OOP, SOLID Principles.
• Backend & Databases: Firebase, Supabase, RESTful APIs Integration, JSON, Hive (Local Storage), MySQL.
• Tools & Version Control: Git & GitHub, CI/CD Pipelines.''';

String aboutMeSummary =
    "I am a passionate Software Engineer and Mobile Application Developer specializing in crafting high-performance, scalable, and cross-platform mobile experiences using Flutter and Dart. With over 3 years of hands-on industry experience, I bridge the gap between robust backend integrations and pixel-perfect UI/UX designs. My development philosophy is rooted in writing production-ready, clean, and maintainable code following strict industry standards.";

String degree =
    'Information Technology Engineering, Computer Engineering Department';
String university = 'Ittihad Private University';
String aboutMe = 'Software Engineer';
