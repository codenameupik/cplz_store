import 'package:cplz_store/common/widgets/appbar/appbar.dart';
import 'package:cplz_store/common/widgets/products/cart/cart_menu.dart';
import 'package:cplz_store/utils/constants/colors.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: CColors.grey)),
          Text(CTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: CColors.white)),
        ],
      ),
      actions: [
        CCartCounterIcon(
          onPressed: () {},
          iconColor: CColors.white,
        )
      ],
    );
  }
}
