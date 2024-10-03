import 'package:e_commerce/components/categories_home.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/banner_discount.dart';
import 'header_home_part.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const HeaderHomePart(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const BannerDiscount(),
              SizedBox(height: getProportionateScreenHeight(10)),
              const Categories()
            ],
          ),
        ),
      ),
    );
  }
}
