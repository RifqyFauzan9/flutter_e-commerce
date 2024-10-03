import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                Text(
                  'Otp Verification',
                  style: headingTextStyle,
                ),
                const Text(
                  'We\'ve sent you code to +62 89* **** **75.',
                  textAlign: TextAlign.center,
                ),
                buildTimer(),
                SizedBox(height: SizeConfig.screenHeight * 0.10),
                const OtpForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'This code will be expired in ',
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(
            begin: 60.0,
            end: 0,
          ),
          duration: const Duration(seconds: 60),
          builder: (context, value, child) {
            return Text(
              "${value.toInt()} seconds.",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            );
          },
        ),
      ],
    );
  }
}
