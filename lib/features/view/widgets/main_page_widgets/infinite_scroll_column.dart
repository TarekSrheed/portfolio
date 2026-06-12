import 'package:flutter/material.dart';
import 'package:portfolio/core/res/images/app_images.dart';

class InfiniteScrollColumn extends StatefulWidget {
  final List<dynamic> items;

  const InfiniteScrollColumn({super.key, required this.items});

  @override
  State<InfiniteScrollColumn> createState() => _InfiniteScrollColumnState();
}

class _InfiniteScrollColumnState extends State<InfiniteScrollColumn> {
  late ScrollController _scrollController;
  bool _isScrolling = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    if (!mounted || !_scrollController.hasClients || !_isScrolling) return;
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted || _isScrolling || !_scrollController.hasClients) {
        // حساب المسافة المتبقية للسكرول
        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.position.pixels;
        final remainingDistance = maxScroll - currentScroll;

        if (remainingDistance <= 2.0) {
          _scrollController.jumpTo(0);
          Future.delayed(const Duration(milliseconds: 50), () {
            _startAutoScroll();
          });
          return;
        }
        // حساب الوقت المناسب للمسافة المتبقية ليظل السكرول ناعم (Smooth)
        final durationInSeconds = (remainingDistance / 60)
            .round(); // 40 بكسل في الثانية سرعة ممتازة ومريحة للعين

        _scrollController
            .animateTo(
          maxScroll,
          duration:
              Duration(seconds: durationInSeconds > 0 ? durationInSeconds : 1),
          curve: Curves.linear,
        )
            .then((_) {
          if (mounted && _scrollController.hasClients) {
            _scrollController.jumpTo(0);
            _startAutoScroll();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _isScrolling = false;
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int optimizedCacheWidth =
        (MediaQuery.sizeOf(context).width * 0.3).toInt();
    // const int optimizedCacheWidth = 200;
    return ListView.builder(
      controller: _scrollController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length * 10,
      addRepaintBoundaries: true, // عزل إعادة الرسم لكل عنصر على حدة في الـ GPU
      addAutomaticKeepAlives: true,
      itemBuilder: (context, index) {
        final item = widget.items[index % widget.items.length];
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                      cacheWidth: optimizedCacheWidth,
                      errorBuilder: (_, __, ___) =>
                          _buildErrorContainer(100, Icons.image, 40),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Image.asset(
                    phoneCover,
                    fit: BoxFit.fill,
                    cacheWidth: optimizedCacheWidth,
                    errorBuilder: (_, __, ___) =>
                        _buildErrorContainer(30, Icons.phone_android, 18),
                  ),
                ),
              ],
            ));
      },
    );
  }

  Widget _buildErrorContainer(double height, IconData icon, double iconSize) {
    return Container(
      height: height,
      color: Colors.grey[900], // متناسق مع الخلفية السوداء للـ Portfolio
      child: Icon(icon, size: iconSize, color: Colors.grey[600]),
    );
  }
}
