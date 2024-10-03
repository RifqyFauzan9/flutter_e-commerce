import 'package:flutter/material.dart';
import '../../../size_config.dart';

class IconWithTrigger extends StatelessWidget {
  final Widget svgIcon;
  final String? trigger;

  const IconWithTrigger({super.key, required this.svgIcon, this.trigger});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: getProportionateScreenWidth(46),
          width: getProportionateScreenWidth(46),
          decoration: const BoxDecoration(
            // color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: svgIcon,
          ),
        ),
        if (trigger != null)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: Center(
                child: Text(
                  trigger!,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    fontWeight: FontWeight.w600,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
