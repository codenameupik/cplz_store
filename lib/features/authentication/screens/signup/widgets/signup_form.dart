import 'package:cplz_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:cplz_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:cplz_store/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CSignupForm extends StatelessWidget {
  const CSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: CTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: CSizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: CTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtwInputField),

          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: CTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputField),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: CTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputField),

          //Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: CTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputField),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: CTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwSections),

          //Terms & Conditions Checkbox
          const CTermsAndConditionsCheckbox(),
          const SizedBox(height: CSizes.spaceBtwSections),

          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(CTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
