import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/complete_profile/complete_profile_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Complete your Profile',
                    style: headingTextStyle,
                  ),
                  const Text(
                    'Complete your details or continue \nwith social media',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  const CompleteProfileForm(),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  const Text(
                    'By continuoing you confirm that you agree \nwith our Terms and Condition',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
