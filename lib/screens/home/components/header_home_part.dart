import 'package:e_commerce/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'icon_with_trigger.dart';

class HeaderHomePart extends StatelessWidget {
  const HeaderHomePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconWithTrigger(
            svgIcon: Icon(Icons.shopping_cart_outlined),
          ),
          IconWithTrigger(
            svgIcon: Icon(Icons.notifications_none_outlined),
            trigger: '3',
          ),
        ],
      ),
    );
  }
}
