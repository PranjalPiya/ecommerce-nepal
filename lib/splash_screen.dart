import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce_nepal/core/constant/colors.dart';
import 'package:ecommerce_nepal/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    navigateToHomePage();
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );

    controller.forward();
  }

  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const MainNavigationPage()));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animations/ecommerce_nepal_logo.json',
                width: 200, height: 200, fit: BoxFit.fill),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: animation,
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Bazar ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Nepal',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // AnimatedTextKit(
            //     totalRepeatCount: 40,
            //     onFinished: () {},
            //     animatedTexts: [
            //       FadeAnimatedText(
            //         'Bazar Nepal',
            //         fadeInEnd: 1,
            //         fadeOutBegin: 5,
            //         // duration: const Duration(seconds: 2),
            //         textStyle: const TextStyle(
            //             fontSize: 30, fontWeight: FontWeight.bold),
            //       ),
            //     ]),
          ],
        ),
      ),
    );
  }
}
