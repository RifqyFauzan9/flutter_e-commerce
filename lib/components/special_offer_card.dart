import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOfferCard extends StatelessWidget {
  final String image, category;
  final int numOfBrands;
  final GestureTapCallback onPressed;

  const SpecialOfferCard({
    super.key,
    required this.image,
    required this.category,
    required this.numOfBrands,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenWidth(10),
        right: getProportionateScreenWidth(20),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              width: getProportionateScreenWidth(242),
              height: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(242),
              height: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF343434).withOpacity(0.4),
                    const Color(0xFF343434).withOpacity(0.15),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '$numOfBrands brands',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
