import 'package:flutter/material.dart';

class CreateEnderecoReturn extends StatelessWidget {

  @override
  Widget blockTextReturned(BuildContext context, AsyncSnapshot snapshot) {

    return Row(
      children: [
        // Text(
        //   '${snapshot.data['rua'][index]}Rua Indaial - até 583 - Itajai SC - \n CEP 88303-301',
        //   style: TextStyle(
        //       fontSize: 15,
        //       fontFamily: 'poppins',
        //       fontWeight: FontWeight.w400),
        // ),
      ],
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
