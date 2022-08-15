import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:testmp/ui/search/appBar/search_app_abr_widget.dart';
import 'package:testmp/utils/color_utils.dart';
import '../../repository/cep_repo.dart';
import 'components/cep_textfield_widget.dart';
import 'components/endereco_return_widget.dart';

class BodySearch extends StatefulWidget {
  const BodySearch({Key? key}) : super(key: key);

  @override
  State<BodySearch> createState() => _BodySearchState();
}

class _BodySearchState extends State<BodySearch> {
  String cepBusca = '';
  final CepRepository _reqEndereco = CepRepository();
  CreateEnderecoReturn createEndereco = CreateEnderecoReturn();
  bool firstSearch = true;

  int _counter = 0;
  void _acrescentaContador() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = (prefs.getInt('contador') ?? 0) + 1;
    await prefs.setInt('contador', _counter);
    setState(() {
      _counter++;
    });
  }
  @override
  void initState() {
    _getContador();
    super.initState();
  }
  _getContador() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter =  (prefs.getInt('contador') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppBarSearchWidget(),
        //Container(color: ColorsUtils.white,height: 200),
        SizedBox(
          height: 28,
        ),
        Text(
          'Digite o CEP que você \n deseja procurar',
          style: TextStyle(
            color: ColorsUtils.white,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 18,
        ),
        //CepTextField(),
        Container(
          alignment: Alignment.center,
          width: 293,
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: TextField(keyboardType:  TextInputType.number,
            onSubmitted: (text) {
              setState(() {
                firstSearch = false;
                cepBusca = text;
                _acrescentaContador();
              });
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
        ),
        SizedBox(
          height: 18,
        ),
        !firstSearch
            ? FutureBuilder(
                future: _reqEndereco.getEndereco(cepBusca),
                builder: (BuildContext context,
                    AsyncSnapshot<Map<dynamic, dynamic>> snapshot) {
                  return _enderecoretornado(context, snapshot);
                },
              )
            : Container(
                color: ColorsUtils.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 50, left: 30),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          'Pesquise seu CEP',
                          style: TextStyle(
                              color: ColorsUtils.purplePrimary,
                              fontSize: 19,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ],
                  ),
                )),

        _btnFavorite(),
      ],
    );
  }

    _enderecoretornado(BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      color: ColorsUtils.white,
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Endereço:',
                  style: TextStyle(
                      color: ColorsUtils.purplePrimary,
                      fontSize: 19,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  '${snapshot.data['logradouro']} - ${snapshot.data['localidade']} - ${snapshot.data['uf']}\n CEP ${snapshot.data['cep']}',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }

  _btnFavorite() {
    return Container(
      color: ColorsUtils.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 293,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 43, 23, 157),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('lib/assets/svg/star.svg'),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Adicionar aos favoritos',
                      style: TextStyle(
                          color: ColorsUtils.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'hind'),
                    )
                  ],
                ),
              ),
              onTap: () {
                !firstSearch
                    ? (){} :() {
                  // _saveFavorite();
                };

              },
            ),
          )
        ],
      ),
    );
  }
}

// _saveFavorite() {
//
//   final database = openDatabase (
//   join ( await getDatabasesPath (), 'doggie_database.db' ),
//   onCreate : ( db , version ) {
//   'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)' , ); }, // Defina a versão. Isso executa a função onCreate e fornece um // caminho para realizar upgrades e downgrades do banco de dados.
//   versão : 1 , );
//
//
//   }
//
// String join(Future<String> databasesPath, String s) {
// }
