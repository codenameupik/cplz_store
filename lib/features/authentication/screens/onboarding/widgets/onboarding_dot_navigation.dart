import 'package:cplz_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cplz_store/utils/helpers/helper_functions.dart';
import 'package:cplz_store/utils/device/device_utility.dart';
import 'package:cplz_store/utils/constants/colors.dart';
import 'package:cplz_store/utils/constants/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? CColors.light : CColors.dark, dotHeight: 6),
      ),
    );
  }
}
