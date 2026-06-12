import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/features/view/pages/responsive/responsive_utils.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/bottom_web.dart';
import 'package:portfolio/features/view/widgets/flout_appbar.dart';
import 'package:portfolio/features/view/widgets/gradient_text.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/about_me_section.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/contant_section.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/faq_section.dart';
import 'package:portfolio/features/view/widgets/my_drawer.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/image_scroll_section.dart';
import 'package:portfolio/features/view/widgets/project_widget.dart';
import 'package:portfolio/features/view/widgets/main_page_widgets/section_title.dart';

class MainPage extends StatefulWidget {
  final String? scrollTo;
  const MainPage({
    super.key,
    this.scrollTo,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // المفاتيح تم تعريفها كـ final وهي ممتازة لتحديد مكان السكرول
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey faqKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  // تحويل الكائنات لتكون على مستوى الـ State وليس داخل الـ build لحفظ الأداء
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FloutAppbar _floutAppbar = FloutAppbar();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.scrollTo != null) {
        _scrollToSection(widget.scrollTo!);
      }
    });
  }

  // تنظيف الذاكرة لمنع التسريب الـ Memory Leak
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null && mounted) {
      HapticFeedback.lightImpact();
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void _scrollToSection(String section) {
    switch (section) {
      case 'home':
        scrollToKey(homeKey);
        break;
      case 'about':
        scrollToKey(aboutMeKey);
        break;
      case 'projects':
        scrollToKey(projectsKey);
        break;
      case 'faq':
        scrollToKey(faqKey);
        break;
      case 'contact':
        scrollToKey(contactKey);
        break;
    }
  }

  void _onDrawerItemTap(GlobalKey key) {
    _scaffoldKey.currentState?.closeDrawer();
    scrollToKey(key);
  }

  @override
  Widget build(BuildContext context) {
    // جلب أبعاد الشاشة المتغيرة
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    final height = size.height;

    final isMobile = ResponsiveUtils.isMobile(context);
    final isTablet = ResponsiveUtils.isTablet(context);

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      drawer: isMobile
          ? myDrawer(
              ontapHome: () => scrollToKey(homeKey),
              ontapAbout: () => _onDrawerItemTap(aboutMeKey),
              ontapProject: () => _onDrawerItemTap(projectsKey),
              ontapFAQ: () => _onDrawerItemTap(faqKey),
              ontapContact: () => _onDrawerItemTap(contactKey),
            )
          : null,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 10,
            pinned: true,
            expandedHeight: 70,
            collapsedHeight: 70,
            flexibleSpace: _floutAppbar.appbar(
              isMobile: isMobile,
              context: context,
              isTablet: isTablet,
              width: width,
              topHeight: 20,
              ontapHome: () => scrollToKey(homeKey),
              ontapAbout: () => scrollToKey(aboutMeKey),
              ontapProject: () => scrollToKey(projectsKey),
              ontapFAQ: () => scrollToKey(faqKey),
              ontapContact: () => scrollToKey(contactKey),
              ontapImage: () => scrollToKey(homeKey),
              ontapMenu: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            leading: isMobile
                ? const SizedBox.shrink()
                : null, // SizedBox.shrink أفضل من Container فارغ
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: isMobile ? height * 0.02 : height * 0.05),

                // Name
                GradientText(
                  key: homeKey,
                  text: 'Tarek Sarhid Almohammad',
                  fontWeight: FontWeight.w500,
                  fontSize: isMobile ? 32 : (isTablet ? 48 : 62),
                ),

                // Engineer
                GradientText(
                  text: 'Software Engineer', // تم تصحيح الخطأ الإملائي هنا
                  fontWeight: FontWeight.w400,
                  fontSize: isMobile ? 24 : (isTablet ? 32 : 38),
                ),

                ImageScrollSection(width: width, height: height),

                // About Me Section
                SectionTitle(
                  sectionKey: aboutMeKey,
                  title: 'About Me',
                  width: width,
                  isMobile: isMobile,
                  isTablet: isTablet,
                ),
                AboutMeSection(
                    height: height,
                    width: width,
                    isMobile: isMobile,
                    isTablet: isTablet),

                // Projects Section
                SectionTitle(
                  sectionKey: projectsKey,
                  title: 'My Latest Projects',
                  width: width,
                  isMobile: isMobile,
                  isTablet: isTablet,
                ),
                ProjectWidget(width: width, height: height),

                // FAQ Section
                SectionTitle(
                  sectionKey: faqKey,
                  title: 'Frequently asked questions',
                  width: width,
                  isMobile: isMobile,
                  isTablet: isTablet,
                ),
                FaqSection(height: height, width: width, isMobile: isMobile),

                // Contact Section
                SectionTitle(
                  sectionKey: contactKey,
                  title: 'Contact Me',
                  width: width,
                  isMobile: isMobile,
                  isTablet: isTablet,
                  customTopPadding: isMobile
                      ? 55
                      : (isTablet
                          ? 70
                          : 100), // تخصيص البادينج المختلف للكونتاكت
                ),
                ContantSection(
                    height: height,
                    width: width,
                    isMobile: isMobile,
                    isTablet: isTablet),

                SizedBox(height: isMobile ? height * 0.05 : height * 0.13),

                // Bottom Section
                BottomWeb(
                  height: height,
                  isMobile: isMobile,
                  isTablet: isTablet,
                  onTapHome: () => scrollToKey(homeKey),
                  onTapAboutMe: () => scrollToKey(aboutMeKey),
                  onTapProjects: () => scrollToKey(projectsKey),
                  onTapFAQ: () => scrollToKey(faqKey),
                  onTapContact: () => scrollToKey(contactKey),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
