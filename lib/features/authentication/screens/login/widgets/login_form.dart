import 'package:cplz_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:cplz_store/features/authentication/screens/signup/signup.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CLoginForm extends StatelessWidget {
  const CLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: CTexts.email),
            ),
            const SizedBox(height: CSizes.spaceBtwInputField),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: CTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: CSizes.spaceBtwInputField / 2),

            //Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(CTexts.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(CTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: CSizes.spaceBtwSections),

            //Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(CTexts.signIn))),
            const SizedBox(height: CSizes.spaceBtwItems),
            //Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(const SignupScreen()),
                    child: const Text(CTexts.createAccount))),
            //const SizedBox(height: CSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
