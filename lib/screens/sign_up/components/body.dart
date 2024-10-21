import 'package:flutter/material.dart';
import 'package:e_commerce/components/social_media_icon.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce/size_config.dart';

// body sign up

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Register an Account",
                    style: headingStyle,
                  ),
                  const Text(
                      "Complete your Details or continue\nwith Social Media",
                      textAlign: TextAlign.center),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  const SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIcon(
                        icon: 'assets/icons/google-icon.svg',
                        press: () {},
                      ),
                      SocialMediaIcon(
                        icon: 'assets/icons/facebook-2.svg',
                        press: () {},
                      ),
                      SocialMediaIcon(
                        icon: 'assets/icons/twitter.svg',
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  const Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                ],
              ),
            ),
          ),
        ));
  }
}
