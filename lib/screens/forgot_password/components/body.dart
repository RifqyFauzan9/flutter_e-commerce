import 'package:e_commerce/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/forgot_password/components/forgot_password_form.dart';
import 'package:e_commerce/size_config.dart';

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
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                const ForgotPasswordForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                dontHaveAccountText(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child:
                const Text("Sign Up", style: TextStyle(color: kPrimaryColor)))
      ],
    );
  }
}
