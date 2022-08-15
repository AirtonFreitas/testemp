import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testmp/utils/color_utils.dart';

class CepTextField extends StatelessWidget {
  const CepTextField({Key? key}) : super(key: key);
  //String cepBusca = '33858110';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 293,
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: TextField(
        onChanged: (text) {
          //cepBusca = text;
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'digite o CEP',
          prefixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'lib/assets/svg/iconask.svg',
              width: 18,
            ),
          ),
        ),
      ),
    );
  }
}
