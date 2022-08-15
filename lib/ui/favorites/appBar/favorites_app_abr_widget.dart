import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/color_utils.dart';

class AppBarFavoritesWidget extends StatelessWidget {
  const AppBarFavoritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 48, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('lib/assets/svg/star.svg', color: ColorsUtils.purplePrimary,width: 32,),
            Text('Meus favoritos',
                style: TextStyle(
                    color: ColorsUtils.purplePrimary,
                    fontSize: 27,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600))
          ],
        ));
  }
}
