import 'package:cplz_store/common/styles/spacing_styles.dart';
import 'package:cplz_store/common/widgets/login_signup/form_divider.dart';
import 'package:cplz_store/common/widgets/login_signup/social_button.dart';
import 'package:cplz_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:cplz_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title & Sub-Title
              const CLoginHeader(),

              //Form
              const CLoginForm(),

              //Divider
              CFormDivider(dividerText: CTexts.orSignInWith.capitalize!),
              const SizedBox(height: CSizes.spaceBtwSections),

              //Footer
              const CSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
