import 'package:e_commerce/components/section_title.dart';
import 'package:e_commerce/components/special_offer_card.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(5),
          ),
          child: const SectionTitle(title: 'Special for you'),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: 'assets/images/Image Banner 2.png',
                  category: 'Smartphone',
                  numOfBrands: 18,
                  onPressed: () {},
                ),
                SpecialOfferCard(
                  image: 'assets/images/Image Banner 2.png',
                  category: 'Fashion',
                  numOfBrands: 24,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
