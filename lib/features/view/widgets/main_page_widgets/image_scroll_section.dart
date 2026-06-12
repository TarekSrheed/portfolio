// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/core/res/images/image_items.dart';
import 'package:portfolio/features/view/pages/responsive/responsive_utils.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/infinite_scroll_column.dart';

class ImageScrollSection extends StatelessWidget {
  final double width;
  final double height;
  const ImageScrollSection({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtils.isMobile(context);

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: isMobile ? 10 : width / 13,
              right: isMobile ? 10 : width / 15,
              top: isMobile ? height * 0.02 : height * 0.05),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: const ImageScrollHorizontalList(),
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: Stack(
              children: [
                _buildRadialGradient(Alignment.topLeft),
                _buildRadialGradient(Alignment.bottomRight),
                _buildLinearGradient(Alignment.topCenter, Alignment.center),
                _buildLinearGradient(Alignment.bottomCenter, Alignment.center,
                    isFourColors: true),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRadialGradient(Alignment alignment) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 1.5,
          center: alignment,
          colors: const [Colors.black, Colors.black12, Colors.transparent],
        ),
      ),
    );
  }

  Widget _buildLinearGradient(Alignment begin, Alignment end,
      {bool isFourColors = false}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: isFourColors
              ? const [
                  Colors.black,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent
                ]
              : const [Colors.black, Colors.transparent],
        ),
      ),
    );
  }
}

class ImageScrollHorizontalList extends StatelessWidget {
  const ImageScrollHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _ScrollColumn(images: oneImages),
          _ScrollColumn(images: twoImages),
          _ScrollColumn(images: threeImages),
          _ScrollColumn(images: fourImages),
          _ScrollColumn(images: fifeImages),
        ],
      ),
    );
  }
}

class _ScrollColumn extends StatelessWidget {
  final List images;
  const _ScrollColumn({required this.images});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtils.isMobile(context);
    final isTablet = ResponsiveUtils.isTablet(context);
    final width = MediaQuery.sizeOf(context).width;

    return SizedBox(
      width: isMobile ? width * 0.3 : (isTablet ? width * 0.22 : width * 0.17),
      height: isMobile ? 400 : 600,
      child: InfiniteScrollColumn(items: images),
    );
  }
}
