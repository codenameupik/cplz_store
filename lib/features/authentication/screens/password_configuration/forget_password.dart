import 'package:cplz_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headings
            Text(CTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: CSizes.spaceBtwItems),
            Text(CTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: CSizes.spaceBtwItems * 2),

            //Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: CTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: CSizes.spaceBtwItems),

            //Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(CTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
