import 'package:cplz_store/utils/constants/image_string.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:cplz_store/utils/helpers/helper_functions.dart';

class CLoginHeader extends StatelessWidget {
  const CLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? CImages.lightAppLogo : CImages.darkAppLogo),
        ),
        Text(CTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: CSizes.sm),
        Text(CTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
