
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:neelam_rajpoot/desktop/desktop_certificate.dart';
import 'package:neelam_rajpoot/firebase_options.dart';
import 'package:neelam_rajpoot/mobile/mobile_certificate.dart';

import 'theme/responsive_screen_provider.dart';
import 'theme/app_theme.dart';
import 'widgets/nav_bar.dart';
import 'desktop/desktop_header.dart';
import 'desktop/desktop_about_me.dart';
import 'desktop/desktop_education.dart';
import 'desktop/desktop_experience.dart';
import 'desktop/desktop_volunteering.dart';
import 'desktop/desktop_technotes.dart';
import 'desktop/desktop_contact.dart';
import 'desktop/desktop_footer.dart';
import 'mobile/mobile_header.dart';
import 'mobile/mobile_about_me.dart';
import 'mobile/mobile_education.dart';
import 'mobile/mobile_experience.dart';
import 'mobile/mobile_volunteering.dart';
import 'mobile/mobile_technotes.dart';
import 'mobile/mobile_contact.dart';
import 'mobile/mobile_footer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neelam Rajpoot',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          DS1Header(),
          DS2AboutMe(),
          DS3Education(),
          DS4Experience(),
          DS5Volunteering(),
          DS100Certificate(),
          DS6TechNotes(),
          DS7Contact(),
          DS8Footer(),
        ],
      );
    }

    Widget mobileUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          MS1Header(),
          MS2AboutMe(),
          MS3Education(),
          MS4Experience(),
          MS5Volunteering(),
          MS100Certificate(),
          MS6TechNotes(),
          MS7Contact(),
          MS8Footer(),
        ],
      );
    }

    return Scaffold(
      appBar: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : AppBar(elevation: 0.0),
      drawer: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : NavBar().mobileNavBar(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: ResponsiveScreenProvider.isDesktopScreen(context)
              ? desktopUI()
              : mobileUI(),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
    );
  }
}
