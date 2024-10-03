import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(
            color: Colors.white,
          ),
          children: [
            const TextSpan(text: 'A Summer Surprise\n'),
            TextSpan(
              text: 'Cashback 20%',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
