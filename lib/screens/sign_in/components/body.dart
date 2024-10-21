import 'package:flutter/material.dart';
import 'package:e_commerce/components/social_media_icon.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce/size_config.dart';

// Body Sign IN

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remember = false;

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
                  'Welcome Back',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sign in with you Email and Password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                const SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
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
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account? "),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                        child: const Text("Sign Up",
                            style: TextStyle(color: kPrimaryColor)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
