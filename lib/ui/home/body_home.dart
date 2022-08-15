import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'appbar/app_bar_widget.dart';

import 'components/ceps_salvos_widget.dart';
import 'components/circular_numeral_widget.dart';
class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBarHomeWidget(),
        SvgPicture.asset(
          'lib/assets/svg/on_the_way_bro.svg',
        ),
        Container(
          width: 202,
          height: 202,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 109, 81, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: CircularNumeralWidget(),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          height: 57,
          width: 296,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 246, 244, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: CepSalvosWidget(),
        ),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
