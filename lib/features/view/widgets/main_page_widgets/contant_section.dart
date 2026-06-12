import 'package:flutter/material.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/features/view/widgets/container_item.dart';
import 'package:portfolio/features/view/widgets/gradient_text.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/custom_portfolio_button.dart';

class ContantSection extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;

  const ContantSection({
    super.key,
    required this.height,
    required this.width,
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
              height: height * 0.6,
              width: width * 0.9,
              context,
              children: [
                GradientText(
                  text: 'Let’s Build Something Great Together',
                  fontWeight: FontWeight.w400,
                  fontSize: isMobile ? 20 : 26,
                ),
                Text(
                  contantTitle,
                  style: contentStyle.copyWith(fontSize: isMobile ? 13 : null),
                ),
                const GradientText(
                  text: 'Email: tareqsarheed@gmail.com',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                const CustomPortfolioButton(
                  text: 'github',
                  url: 'https://github.com/TarekSrheed',
                  height: 30,
                  width: double.maxFinite,
                ),
              ]),
          const SizedBox(height: 15),
          containerItem(
            context,
            height: 300,
            width: width * 0.9,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '🚀🚀🚀🚀',
                  style: tagStyle.copyWith(fontSize: isMobile ? 23 : null),
                ),
              ),
              Text(
                contantCallToAction,
                style: contentStyle.copyWith(fontSize: isMobile ? 17 : null),
              ),
              const CustomPortfolioButton(
                text: 'LinkedIn',
                url: 'www.linkedin.com/in/tarek-almohammad-7b850a228',
                height: 35,
                width: double.maxFinite,
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
            height: isTablet ? height * 0.6 : height * 0.5,
            width: isTablet ? width * 0.55 : width * 0.6,
            children: [
              GradientText(
                text: 'Let’s Build Something Great Together',
                fontWeight: FontWeight.w400,
                fontSize: isTablet ? 23 : 26,
              ),
              Text(
                contantTitle,
                style: contentStyle.copyWith(fontSize: isTablet ? 16 : null),
              ),
              const GradientText(
                text: 'Email: tareqsarheed@gmail.com',
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
              Center(
                child: CustomPortfolioButton(
                  text: 'github',
                  url: 'https://github.com/TarekSrheed',
                  height: 40,
                  width: isTablet ? width * 0.35 : width * 0.45,
                ),
              )
            ],
          ),
          SizedBox(width: width * 0.01),
          containerItem(
            context,
            height: isTablet ? height * 0.6 : height * 0.5,
            width: isTablet ? width * 0.35 : width * 0.3,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '🚀🚀🚀🚀',
                  style: tagStyle.copyWith(fontSize: isMobile ? 23 : null),
                ),
              ),
              Text(
                contantCallToAction,
                style: contentStyle.copyWith(fontSize: isTablet ? 18 : null),
              ),
              const CustomPortfolioButton(
                text: 'LinkedIn',
                url:
                    'https://www.linkedin.com/in/tarek-almohamad-7b850a228?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                height: 40,
                width: double.maxFinite,
              ),
            ],
          ),
        ],
      );
    }
  }
}

String contantTitle =
    "Have a visionary project idea, a business collaboration in mind, or a technical challenge you need solved? Let's connect! Feel free to reach out via email or through my professional networks, and let's build something exceptional together.";
String contantCallToAction =
    "Let’s transform your innovative ideas into powerful, seamless mobile realities";
