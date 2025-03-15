import 'package:cplz_store/utils/constants/image_string.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:cplz_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(CImages.deliveredEmailIllustration),
                width: CHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              //Title & SubTitle
              Text(CTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: CSizes.spaceBtwItems),
              Text(CTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: CSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(CTexts.done)),
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(CTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
