import 'package:flutter/material.dart';
import 'package:portfolio/features/view/widgets/gradient_text.dart';

class SectionTitle extends StatelessWidget {
  final GlobalKey sectionKey;
  final String title;
  final double width;
  final bool isMobile;
  final bool isTablet;
  final double? customTopPadding;

  const SectionTitle({
    super.key,
    required this.sectionKey,
    required this.title,
    required this.width,
    required this.isMobile,
    required this.isTablet,
    this.customTopPadding,
  });

  @override
  Widget build(BuildContext context) {
    final topPadding =
        customTopPadding ?? (isMobile ? 70.0 : (isTablet ? 80.0 : 100.0));
    final bottomPadding = isMobile ? 25.0 : (isTablet ? 30.0 : 35.0);

    return Padding(
      padding: EdgeInsets.only(
        left: width / 20,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: GradientText(
          key: sectionKey,
          text: title,
          fontWeight: FontWeight.w500,
          fontSize: isMobile ? 24 : (isTablet ? 30 : 38),
        ),
      ),
    );
  }
}
