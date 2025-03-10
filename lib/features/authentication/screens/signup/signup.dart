import 'package:cplz_store/common/widgets/login_signup/form_divider.dart';
import 'package:cplz_store/common/widgets/login_signup/social_button.dart';
import 'package:cplz_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(CTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: CSizes.spaceBtwSections),

              //Form
              const CSignupForm(),

              const SizedBox(height: CSizes.spaceBtwSections),

              //Divider
              CFormDivider(dividerText: CTexts.orSignUpWith.capitalize!),
              const SizedBox(height: CSizes.spaceBtwSections),

              //Social Buttons
              const CSocialButton(),
              const SizedBox(height: CSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
