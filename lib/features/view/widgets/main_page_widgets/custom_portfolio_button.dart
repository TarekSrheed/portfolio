import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/res/app_style.dart';
import 'package:portfolio/features/view/pages/cubit/portfolio_cubit/portfolio_cubit.dart';

class CustomPortfolioButton extends StatelessWidget {
  final String url;
  final String text;
  final double height;
  final double width;
  final Color color;
  const CustomPortfolioButton({
    super.key,
    required this.url,
    required this.text,
    required this.height,
    required this.width,
    this.color = const Color(0xffC0FF73),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PortfolioCubit>().openSocialLink(context, url);
        // lunchWeb.openWebsite(context, Uri.parse(url));
      },
      child: Container(
        // padding: EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
