import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/color_utils.dart';
class CepSalvosWidget extends StatelessWidget {
  const CepSalvosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'lib/assets/svg/flag.svg',
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'CEPs salvos',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'poppins',
                  color: ColorsUtils.purpleSecondary,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Container(
          width: 25,
          height: 25,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 123, 97, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Text(
            '3',
            style: TextStyle(color: ColorsUtils.white),
          ),
        ),
      ],
    );
  }
}
