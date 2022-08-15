import 'package:flutter/material.dart';

import '../../../utils/color_utils.dart';

class AppBarSearchWidget extends StatelessWidget {
  const AppBarSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 48, left: 24),
        child: Container(
          color: ColorsUtils.purplePrimary,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Procurar CEP',
                style: TextStyle(
                  color: ColorsUtils.white,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                ),
              ),
            ],
          ),
        ));
  }
}
