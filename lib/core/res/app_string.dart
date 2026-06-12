String rideContant = '''Overview:

The Smart Bike Rental System is a cross-platform mobile application that simplifies the process of renting and returning bikes across multiple locations. It is designed to enhance urban mobility by providing users with a convenient and eco-friendly transportation solution.

Key Features:

•  User Authentication: Secure login and account creation using Supabase.
•  GPS-Based Location Tracking: Real-time location updates to locate nearby rental stations.
•  Rental Management: Start, end, and monitor rental sessions efficiently.
•  Responsive UI: A modern, intuitive interface that provides a smooth user experience.

Technologies Used:

Flutter, Dart, Supabase (backend), MVVM architecture, GPS Tracking.

My Role:

I developed the full app from scratch, implemented all features, and integrated the backend with Supabase. I focused on a scalable architecture and real-time location services.''';

String flightBookingContant = '''Flight Booking Application
Overview:

The Flight Booking Application is a cross-platform mobile app designed to simulate a complete and seamless flight reservation workflow. From destination selection to the final payment process, the app provides users with a modern, high-performance interface for managing travel itineraries.

Key Features:

• Complete Booking Workflow: Seamless multi-step process including destination searching, flight selection, and seat booking simulations.
• Secure Payment Integration: Integrated mock payment flows to simulate real-world transaction success and error handling.
• Predictive State Handling: Leverages Cubit to manage complex UI states, transitions, and multi-step form data without performance lags.
• Dynamic UI Updates: Real-time updates for seat availability, price filtering, and booking status.
• Support Arabic and English language.

Technologies Used:

Flutter, Dart, Cubit (State Management), MVVM / Clean Architecture, Core Animation Components.

My Role:

I engineered the entire application from scratch, implementing a clean and scalable architectural pattern. I designed the multi-step booking logic, managed complex states efficiently using Cubit, and crafted a responsive, production-ready user interface.''';

String fieldCollectContant = '''Dynamic Data Collection & Survey Application
Overview:

Inspired by enterprise tools like KoboToolbox, this is an advanced, offline-first data collection mobile application designed for field researchers and data collectors. The system dynamically renders complex surveys and forms created by administrators via the backend, allowing users to capture, store, and sync high-fidelity data under any network condition.

Key Features:

Dynamic Form Rendering: Automatically generates intricate, multi-type survey interfaces (including text, media, geo-locations, and conditional logic) based on real-time backend configurations.

Robust Offline-First Architecture: Employs local caching to allow data collectors to work entirely offline, saving incomplete sessions locally and resuming them at any time.

Smart Synchronization & Media Support: Supports seamless data capture for heavy multimedia (images, videos, audio) with an intelligent auto-sync mechanism that pushes stored data to the cloud the moment an internet connection is detected.

Initial Local Bootstrapping: Implements a one-time initial synchronization layer to pull and secure all allocated survey structures locally before field deployment.

Technologies Used:

Flutter, Dart, Provider (State Management), Hive (NoSQL Local Storage), MVVM Architecture, Background Sync APIs.

My Role:

I designed and developed the entire mobile application architecture from scratch within my development team. I engineered the dynamic UI rendering engine to translate backend payloads into interactive Flutter forms, optimized the Hive NoSQL storage layer for efficient media and data persistence, and implemented the automated state-driven synchronization pipeline using Provider.''';

String noteContent = '''Overview:

Smart Notes is a mobile application that enables users to write, edit, and delete notes in a streamlined way. It supports user authentication and secure data storage via Supabase, making it an ideal solution for organizing tasks and ideas on the go.

Key Features:

•  Full CRUD Functionality: Create, Read, Update, Delete notes with real-time updates.
•  Authentication: Secure user login and data access.
•  Cloud Sync: Notes are stored and synced via Supabase for cross-device access.
•  Dark Mode: Optimized user experience for all lighting conditions.

Technologies Used:

Flutter, Dart, Riverpod for state management, MVVM architecture, Supabase.

My Role:

I built the app from the ground up, handled state management with Riverpod, and ensured secure data storage and smooth UX.''';

String newsContent = '''Overview:

The Global News Application is a mobile app designed to keep users updated with the latest news from around the world. It allows filtering news by categories and includes search functionality for a personalized experience.

Key Features:

•  Category-Based Filtering: Browse news by topics like Business, Health, Sports, and Technology.
•  Search Functionality: Quickly find news articles using keywords.
•  Real-Time Updates: Fetches the latest articles from a live news API.
•  Clean UI: Minimalist and user-friendly design for seamless reading.

Technologies Used:

Flutter, Dart, BLoc pattern for state management, MVVM architecture, NewsAPI.

My Role:

I was responsible for the entire app development cycle, including API integration, UI/UX design, and implementing the BLoc pattern for maintainability.''';

String formsContent = '''Overview:

This application allows users to fill out various forms or surveys and receive in-app rewards in return. It is designed for campaigns, customer feedback collection, and market research.

Key Features:

•  Form Completion System: Multiple dynamic forms based on user informations.
•  Reward Mechanism: Users earn virtual rewards after form submission.
•  Push Notifications: Local reminders for form deadlines or new surveys.
•  Modern UI: Friendly interface tailored for non-tech users.

Technologies Used:

Flutter, Dart, Riverpod, MVVM architecture, Supabase (backend), Local Notifications API.

My Role:

I designed and developed the full user journey including form logic, reward flow, and notification system.''';

String chatContent = '''Overview:

The instant chat app is an Android messaging platform built on Flutter. The app allows users to create or join groups and send and receive messages instantly, leveraging the capabilities of the Firebase instant database.

Key Features:

• Firebase Auth: Secure login using email/password.
• Direct Messaging: Instant communication with automatic updates.
• Firestore Integration: Efficiently store and retrieve messages.
• Responsive Design: Chat screens optimized for different device sizes.

Technologies Used:

Flutter, Dart, Firebase Auth, Cloud Firestore.

My Role:

I oversaw Firebase integration, chat infrastructure, and UI design. I focused on responsiveness and message rendering.''';

class AppStrings {
  // =================================================================
  // معلومات الهوية الشخصية والروابط الثابتة (Cross-Language الثابتة)
  // =================================================================
  static const String developerName = 'Tarek Sarhid Almohammad';
  static const String softwareEngineer = 'Software Engineer';

  // الروابط الدقيقة المستخرجة مباشرة من ملفات الأكواد الخاصة بك
  static const String cvDownloadUrl =
      'https://drive.google.com/uc?export=download&id=1ZCDwCECYthyysVN7iOpoJYrzSbki48Sd';
  static const String facebookUrl =
      'https://www.facebook.com/share/16oBZE2wNS/';
  static const String instagramUrl =
      'https://www.instagram.com/tarek_srheed?igsh=cnFnanMydHhzNW1m';
  static const String githubUrl = 'https://github.com/TarekSrheed';
  static const String linkedInUrl =
      'https://www.linkedin.com/in/tarek-almohamad-7b850a228?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';
  static const String contactEmail = 'tareqsarheed@gmail.com';

  // =================================================================
  // نصوص النسخة الإنجليزية (English Version)
  // =================================================================
  static const String cvEn = 'CV';
  static const String navigationEn = 'Navigation';
  static const String homeEn = 'Home';
  static const String aboutMeEn = 'About Me';
  static const String projectsEn = 'Projects';
  static const String faqEn = 'FAQ';
  static const String contactMeEn = 'Contact Me';
  static const String socialMediaEn = 'Social media';
  static const String facebookEn = 'Facebook';
  static const String instagramEn = 'Instagram';
  static const String githubLabelEn = 'github';
  static const String linkedInLabelEn = 'LinkedIn';

  // عناوين الصفحات وأقسام المشاريع
  static const String latestProjectsEn = 'My Latest Projects';
  static const String latestStoriesEn = 'My Latest Stories';
  static const String faqTitleEn = 'Frequently asked questions';
  static const String linkToProjectEn = 'Link To Project';

  // قسم من أنا والتعليم بالإنجليزية (About Me & Education)
  static const String educationEn = 'EDUCATION';
  static const String degreeEn =
      'Information Technology Engineering, Computer Engineering Department';
  static const String universityEn = 'Ittihad Private University';
  static const String professionalSummaryEn = 'Professional Summary';

  static const String aboutMeSummaryEn =
      "I am a passionate Software Engineer and Mobile Application Developer specializing in crafting high-performance, scalable, and cross-platform mobile experiences using Flutter and Dart. With over 3 years of hands-on industry experience, I bridge the gap between robust backend integrations and pixel-perfect UI/UX designs. My development philosophy is rooted in writing production-ready, clean, and maintainable code following strict industry standards.";

  static const String technicalSkillsEn = 'Technical Skills';
  static const String aboutMeSkillsEn =
      "• Development: Flutter Framework, Dart, Native Android Core, C++.\n"
      "• State Management: BLoC / Cubit, Riverpod, GetX...\n"
      "• Architecture & Clean Code: Clean Architecture, MVVM Design Patterns, OOP, SOLID Principles.\n"
      "• Backend & Databases: Firebase, Supabase, RESTful APIs Integration, JSON, Hive (Local Storage), MySQL.\n"
      "• Tools & Version Control: Git & GitHub, CI/CD Pipelines.";

  // قسم التواصل بالإنجليزية المأخوذ من كود (ContantSection)
  static const String contactHeaderEn = 'Let’s Build Something Great Together';
  static const String contantTitleEn =
      "Have a visionary project idea, a business collaboration in mind, or a technical challenge you need solved? Let's connect! Feel free to reach out via email or through my professional networks, and let's build something exceptional together.";
  static const String contactEmailLabelEn = 'Email: $contactEmail';
  static const String contantCallToActionEn =
      "Let’s transform your innovative ideas into powerful, seamless mobile realities";

  // دالة توليد حقوق الملكية الإنجليزية بشكل ديناميكي
  static String copyrightEn(int year) =>
      '© $year – $developerName . All rights reserved.';

  // =================================================================
  // نصوص النسخة العربية (Arabic Version)
  // =================================================================
  static const String cvAr = 'السيرة الذاتية';
  static const String navigationAr = 'التنقل';
  static const String homeAr = 'الرئيسية';
  static const String aboutMeAr = 'من أنا';
  static const String projectsAr = 'المشاريع';
  static const String faqAr = 'الأسئلة الشائعة';
  static const String contactMeAr = 'تواصل معي';
  static const String socialMediaAr = 'وسائل التواصل الاجتماعي';
  static const String facebookAr = 'فيسبوك';
  static const String instagramAr = 'إنستغرام';
  static const String githubLabelAr = 'جيت هاب';
  static const String linkedInLabelAr = 'لينكد إن';

  // عناوين الصفحات وأقسام المشاريع بالعربية
  static const String latestProjectsAr = 'أحدث مشاريعي';
  static const String latestStoriesAr = 'أحدث أعمالي وقصصي';
  static const String faqTitleAr = 'الأسئلة الشائعة المتكررة';
  static const String linkToProjectAr = 'رابط تصفح المشروع';

  // قسم من أنا والتعليم بالعربية (About Me & Education)
  static const String educationAr = 'التعليم الأكاديمي';
  static const String degreeAr = 'هندسة تقانة المعلومات، قسم هندسة الحاسوب';
  static const String universityAr = 'جامعة الاتحاد الخاصة';
  static const String professionalSummaryAr = 'الملخص المهني';

  static const String aboutMeSummaryAr =
      "أنا مهندس برمجيات ومطور تطبيقات هواتف محمول شغوف، متخصص في بناء وتطوير تجارب مستخدم عالية الأداء وقابلة للتوسع ومتعددة المنصات باستخدام Flutter و Dart. بفضل خبرتي العملية التي تمتد لأكثر من 3 سنوات في هذا المجال، أعمل على الربط بسلاسة بين الأنظمة الخلفية القوية والتصميمات البرمجية الواجهة المثالية (UI/UX). ترتكز فلسفتي البرمجية على كتابة كود نظيف، آمن، وقابل للصيانة والإنتاج الفوري وفقاً لأعلى المعايير البرمجية الصارمة.";

  static const String technicalSkillsAr = 'المهارات التقنية';
  static const String aboutMeSkillsAr =
      "• التطوير البرمجي: بيئة عمل Flutter، لغة Dart، أساسيات نظام أندرويد الأصيل، لغة ++C.\n"
      "• إدارة الحالة: BLoC / Cubit, Riverpod, GetX...\n"
      "• المعمارية والكود النظيف: المعمارية النظيفة (Clean Architecture)، أنماط تصميم MVVM، البرمجة كائنية التوجه (OOP)، ومبادئ SOLID.\n"
      "• الخوادم وقواعد البيانات: خدمات Firebase، منصة Supabase، ربط وبرمجة RESTful APIs، ملفات JSON، المحرك المحلي Hive، وقواعد بيانات MySQL.\n"
      "• الأدوات وإصدارات الكود: مستودعات Git & GitHub، وأتمتة مسارات CI/CD.";

  // قسم التواصل بالعربية المأخوذ من كود (ContantSection)
  static const String contactHeaderAr = 'لنقم ببناء شيء رائع معاً';
  static const String contantTitleAr =
      "هل لديك فكرة مشروع طموحة، أو ترغب في تعاون عملي مشترك، أو تواجه تحدياً تقنياً بحاجة إلى حل؟ يسعدني دائماً التواصل معك وسماع أفكارك. لا تتردد في مراسلتي عبر البريد الإلكتروني أو من خلال شبكاتي المهنية، ودعنا نبني معاً أعمالاً برمجية استثنائية.";
  static const String contactEmailLabelAr = 'البريد الإلكتروني: $contactEmail';
  static const String contantCallToActionAr =
      "دعنا نحول أفكارك الإبداعية المبتكرة إلى تطبيقات واقعية وتجارب مستخدم قوية وسلسة عبر الهواتف المحمولة";

  // دالة توليد حقوق الملكية العربية بشكل ديناميكي
  static String copyrightAr(int year) =>
      '© $year – $developerName . جميع الحقوق محفوظة.';
}
