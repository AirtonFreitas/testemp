import 'package:flutter/material.dart';

import '../../../utils/color_utils.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 48, left: 24),
        child: Row(mainAxisSize: MainAxisSize.max,
          children: [
            RichText(
                //maxLines: 2,
                text: TextSpan(children: [
              TextSpan(
                  text: 'Olá,\n',
                  style: TextStyle(color: ColorsUtils.blackFont, fontSize: 27, fontFamily: 'poppins', fontWeight: FontWeight.w500)),
              TextSpan(
                  text: 'Bem-vindo',
                  style: TextStyle(
                      color: ColorsUtils.blackFont,
                      fontSize: 27,
                      fontFamily: 'poppins', fontWeight: FontWeight.w600))
            ])),
          ],
        ));
  }
}
