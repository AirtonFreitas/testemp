import 'package:flutter_svg/svg.dart';

import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class CircularNumeralWidget extends StatelessWidget {
  const CircularNumeralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'lib/assets/navigation/search.svg',
          color: ColorsUtils.purpleLigth,
          height: 52,
          width: 52,
        ),
        Text(
          '525',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 60,
            fontFamily: 'inter',
            color: ColorsUtils.white,
          ),
        ),
        Text(
          'CEPs pesquisados',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            fontFamily: 'inter',
            color: ColorsUtils.white,
          ),
        ),
      ],
    );
  }
}
