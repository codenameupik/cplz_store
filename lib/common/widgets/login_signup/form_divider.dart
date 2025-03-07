import 'package:cplz_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:cplz_store/utils/constants/colors.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class CFormDivider extends StatelessWidget {
  const CFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? CColors.darkGrey : CColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(CTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
              color: dark ? CColors.darkGrey : CColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
