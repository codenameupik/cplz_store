import 'package:flutter/material.dart';
import 'package:cplz_store/utils/constants/colors.dart';
import 'package:cplz_store/utils/constants/image_string.dart';
import 'package:cplz_store/utils/constants/sizes.dart';

class CSocialButton extends StatelessWidget {
  const CSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: CColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: CSizes.iconMd,
                height: CSizes.iconMd,
                image: AssetImage(CImages.google)),
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: CColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: CSizes.iconMd,
                height: CSizes.iconMd,
                image: AssetImage(CImages.facebook)),
          ),
        ),
      ],
    );
  }
}
