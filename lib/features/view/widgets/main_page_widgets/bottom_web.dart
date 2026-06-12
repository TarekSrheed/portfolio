import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/res/app_string.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/core/res/images/app_images.dart';
import 'package:portfolio/features/view/pages/cubit/portfolio_cubit/portfolio_cubit.dart';
import 'package:portfolio/features/view/widgets/clip_image.dart';
import 'package:portfolio/features/view/widgets/gradient_text.dart';

class BottomWeb extends StatelessWidget {
  const BottomWeb({
    super.key,
    required this.height,
    required this.isMobile,
    required this.isTablet,
    required this.onTapHome,
    required this.onTapAboutMe,
    required this.onTapProjects,
    required this.onTapFAQ,
    required this.onTapContact,
    this.isArabic = false,
  });

  final double height;
  final bool isMobile;
  final bool isTablet;
  final VoidCallback? onTapHome;
  final VoidCallback? onTapAboutMe;
  final VoidCallback? onTapProjects;
  final VoidCallback? onTapFAQ;
  final VoidCallback? onTapContact;
  final bool isArabic;

  @override
  Widget build(BuildContext context) {
    final int currentYear = DateTime.now().year;

    if (isMobile) {
      return _buildMobileLayout(context, currentYear);
    }
    return _buildWebLayout(context, currentYear);
  }

  // مظهر الشاشات الكبيرة والتابلت (Web & Tablet Layout)
  Widget _buildWebLayout(BuildContext context, int year) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLogoHeader(isTablet ? 70 : 80, isTablet ? 23 : 27),
            Padding(
              padding: EdgeInsets.only(top: height * 0.26),
              child: _buildCopyrightText(year, isTablet ? 15 : null),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(
                isArabic ? AppStrings.navigationAr : AppStrings.navigationEn,
                isTablet ? 19 : 21),
            SizedBox(height: height * 0.02),
            _buildNavigationLinks(fontSize: isTablet ? 15 : null),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(
                isArabic ? AppStrings.socialMediaAr : AppStrings.socialMediaEn,
                isTablet ? 19 : 21),
            SizedBox(height: height * 0.02),
            _buildSocialLinks(context, fontSize: isTablet ? 15 : null),
          ],
        ),
      ],
    );
  }

  // مظهر الهاتف (Mobile Layout)
  Widget _buildMobileLayout(BuildContext context, int year) {
    final double? baseFontSize = isMobile ? 16 : null;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLogoHeader(50, 18),
          SizedBox(height: height * 0.04),
          _buildSectionTitle(
              isArabic ? AppStrings.navigationAr : AppStrings.navigationEn, 19),
          SizedBox(height: height * 0.02),
          _buildNavigationLinks(fontSize: baseFontSize),
          SizedBox(height: height * 0.04),
          _buildSectionTitle(
              isArabic ? AppStrings.socialMediaAr : AppStrings.socialMediaEn,
              19),
          SizedBox(height: height * 0.02),
          _buildSocialLinks(context, fontSize: baseFontSize),
          SizedBox(height: height * 0.06),
          Align(
            alignment: Alignment.center,
            child: _buildCopyrightText(year, baseFontSize),
          ),
        ],
      ),
    );
  }

  // ويدجت الشعار والاسم المشترك
  Widget _buildLogoHeader(double imageSize, double fontSize) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        imageClip(logo, imageSize, imageSize),
        const SizedBox(width: 8),
        GradientText(
          text: AppStrings.developerName,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }

  // ويدجت عناوين الأقسام الرئيسية
  Widget _buildSectionTitle(String text, double fontSize) {
    return GradientText(
      text: text,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
    );
  }

  // مجموعة روابط التنقّل لمنع التكرار الشكلي
  Widget _buildNavigationLinks({double? fontSize}) {
    final TextStyle textStyle = content2Style.copyWith(fontSize: fontSize);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTextButton(onTapHome,
            isArabic ? AppStrings.homeAr : AppStrings.homeEn, textStyle),
        _buildTextButton(onTapAboutMe,
            isArabic ? AppStrings.aboutMeAr : AppStrings.aboutMeEn, textStyle),
        _buildTextButton(
            onTapProjects,
            isArabic ? AppStrings.projectsAr : AppStrings.projectsEn,
            textStyle),
        _buildTextButton(onTapFAQ,
            isArabic ? AppStrings.faqAr : AppStrings.faqEn, textStyle),
        _buildTextButton(
            onTapContact,
            isArabic ? AppStrings.contactMeAr : AppStrings.contactMeEn,
            textStyle),
      ],
    );
  }

  // مجموعة روابط التواصل الاجتماعي
  Widget _buildSocialLinks(BuildContext context, {double? fontSize}) {
    final TextStyle textStyle = content2Style.copyWith(fontSize: fontSize);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTextButton(
          () => context
              .read<PortfolioCubit>()
              .openSocialLink(context, AppStrings.facebookUrl),
          isArabic ? AppStrings.facebookAr : AppStrings.facebookEn,
          textStyle,
        ),
        _buildTextButton(
          () => context
              .read<PortfolioCubit>()
              .openSocialLink(context, AppStrings.instagramUrl),
          isArabic ? AppStrings.instagramAr : AppStrings.instagramEn,
          textStyle,
        ),
      ],
    );
  }

  // مصنع موحد لأزرار النصوص لتقليص حجم الملف وتسهيل التحكم
  Widget _buildTextButton(
      VoidCallback? onPressed, String label, TextStyle style) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label, style: style),
    );
  }

  // ويدجت نص حقوق الملكية الديناميكي
  Widget _buildCopyrightText(int year, double? fontSize) {
    return Text(
      isArabic ? AppStrings.copyrightAr(year) : AppStrings.copyrightEn(year),
      style: content2Style.copyWith(fontSize: fontSize),
    );
  }
}
