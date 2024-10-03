import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemCategory extends StatelessWidget {
  final String name, icon;

  const ItemCategory({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            decoration: BoxDecoration(
              color: const Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SvgPicture.asset(icon),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
