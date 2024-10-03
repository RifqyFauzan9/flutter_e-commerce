import 'package:e_commerce/components/item_category.dart';
import 'package:e_commerce/model/category_data.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          listCategory.length,
          (index) {
            final CategoryData category = listCategory[index];
            final name = category.name;
            final icon = category.icon;
            return ItemCategory(
              name: name,
              icon: icon,
            );
          },
        ),
      ),
    );
  }
}