import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/complete_profile/components/complete_profile_form.dart';
import 'package:e_commerce/size_config.dart';

// body complete profile

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Complete Profile",
                  style: headingStyle,
                ),
                const Text(
                  'Complete your profile data',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                const CompleteProfileForm(),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                const Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
