import 'package:flutter/material.dart';
import 'package:portfolio/core/res/app_colors.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/features/data/local/list_question.dart';

class FaqSection extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  const FaqSection({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.65,
      child: ListView.separated(
        padding: EdgeInsets.only(left: width / 20, right: width / 20),
        separatorBuilder: (_, __) => Divider(color: primaryColor, thickness: 1),
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          final faq = faqs[index];
          return ExpansionTile(
            tilePadding: EdgeInsets.all(isMobile ? 5 : 10),
            expandedAlignment: Alignment.centerLeft,
            shape: Border.all(width: 0.0),
            iconColor: primaryColor,
            collapsedIconColor: primaryColor,
            title: Text(
              faq.question,
              style: contentStyle.copyWith(fontSize: isMobile ? 15 : null),
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(isMobile ? 5 : 16),
                child: Text(
                  faq.answer,
                  style: content2Style.copyWith(fontSize: isMobile ? 14 : null),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
