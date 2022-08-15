import 'package:flutter/material.dart';
import 'package:testmp/utils/color_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItemWidget {
  BottomNavigationBarItem item({required String image, required String title}) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'lib/assets/navigation/$image.svg',
          width: 25,
          height: 25,
          color: ColorsUtils.grayNavigation,
        ),
        activeIcon: SvgPicture.asset(
          'lib/assets/navigation/$image.svg',
          width: 25,
          height: 25,
          color: ColorsUtils.purpleNavigation,
        ),
        label: title);
  }
}
