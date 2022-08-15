import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardFavorites extends StatelessWidget {
  const CardFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
        child: Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '88330-301',
                style: TextStyle(fontSize: 15, fontFamily: 'poppins'),
              ),
              IconButton(
                  icon: SvgPicture.asset(
                    'lib/assets/svg/delete.svg',
                    width: 20,
                  ),
                  onPressed: () {}),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rua Indaial - até 583 - Itajaí SC - \n CEP 88303-301',
                style: TextStyle(fontSize: 13, fontFamily: 'poppins'),
              ),
            ],
          ),

        ],
      ),
    ));
  }
}
