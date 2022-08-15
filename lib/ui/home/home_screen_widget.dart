import 'package:flutter/material.dart';
import 'package:testmp/utils/color_utils.dart';
import 'body_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtils.white,
      alignment: Alignment.center,
      child: BodyHome(),
    );
  }
}
