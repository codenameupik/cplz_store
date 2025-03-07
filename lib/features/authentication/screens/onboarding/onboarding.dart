import 'package:cplz_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:cplz_store/utils/constants/image_string.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:cplz_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:cplz_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:cplz_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:cplz_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        //Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: CImages.onBoardingImage1,
              title: CTexts.onBoardingTitle1,
              subTitle: CTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: CImages.onBoardingImage2,
              title: CTexts.onBoardingTitle2,
              subTitle: CTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: CImages.onBoardingImage3,
              title: CTexts.onBoardingTitle3,
              subTitle: CTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        //Skip Button
        const OnBoardingSkip(),

        //Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        //Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}
