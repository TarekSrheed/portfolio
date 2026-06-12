import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/res/app_colors.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/core/res/images/app_images.dart';
import 'package:portfolio/features/view/pages/cubit/portfolio_cubit/portfolio_cubit.dart';
import 'package:portfolio/features/view/widgets/clip_image.dart';

class FloutAppbar {
  Widget appbar({
    required double width,
    required bool isMobile,
    required bool isTablet,
    required BuildContext context,
    required double topHeight,
    void Function()? ontapHome,
    void Function()? ontapAbout,
    void Function()? ontapProject,
    void Function()? ontapFAQ,
    void Function()? ontapContact,
    void Function()? ontapMenu,
    void Function()? ontapImage,
  }) {
    if (isMobile) {
      return Container(
        height: 50,
        constraints: const BoxConstraints(maxWidth: 300),
        decoration: BoxDecoration(
          color: const Color(0xff121212).withValues(alpha: 0.75),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: ListTile(
          leading: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: primaryColor.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(10),
              onTap: ontapMenu,
              child: Icon(Icons.menu, color: primaryColor),
            ),
          ),
          trailing: TextButton(
            onPressed: () {
              const String myCvUrl =
                  'https://drive.google.com/uc?export=download&id=1ZCDwCECYthyysVN7iOpoJYrzSbki48Sd';

              context.read<PortfolioCubit>().openSocialLink(context, myCvUrl);
            },
            child: Text('CV ⭣', style: appbarStyle),
          ),
          // trailing: InkWell(onTap: ontapImage, child: imageClip(logo, 35, 35)),
        ),
      );
    } else {
      return Center(
        child: Container(
          height: 50,
          margin: EdgeInsets.only(top: topHeight, left: 10, right: 10),
          constraints: const BoxConstraints(maxWidth: 550),
          decoration: BoxDecoration(
            color: const Color(0xff121212).withValues(alpha: 0.75),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: ontapHome, child: imageClip(logo, 50, 50)),
              TextButton(
                onPressed: ontapAbout,
                child: Text('About Me', style: appbarStyle),
              ),
              SizedBox(width: width * 0.01),
              TextButton(
                onPressed: ontapProject,
                child: Text('Projects', style: appbarStyle),
              ),
              SizedBox(width: width * 0.01),
              TextButton(
                onPressed: ontapFAQ,
                child: Text('FAQ', style: appbarStyle),
              ),
              SizedBox(width: width * 0.01),
              TextButton(
                onPressed: ontapContact,
                child: Text('Contact me', style: appbarStyle),
              ),
              SizedBox(width: width * 0.01),
              TextButton(
                onPressed: () {
                  const String myCvUrl =
                      'https://drive.google.com/uc?export=download&id=1ZCDwCECYthyysVN7iOpoJYrzSbki48Sd';

                  context
                      .read<PortfolioCubit>()
                      .openSocialLink(context, myCvUrl);
                },
                child: Text('CV ⭣', style: appbarStyle),
              ),
            ],
          ),
        ),
      );
    }
  }
}
