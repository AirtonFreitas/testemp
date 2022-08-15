import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';
import 'body_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtils.purplePrimary,
      alignment: Alignment.center,
      child: BodySearch(),
    );
  }
}
