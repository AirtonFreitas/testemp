import 'package:flutter/material.dart';
import 'package:testmp/ui/favorites/favorites_screen_widget.dart';
import 'package:testmp/ui/navigation/bottom_navigation_item_widget.dart';
import 'package:testmp/utils/color_utils.dart';
import '../favorites/appBar/favorites_app_abr_widget.dart';
import '../home/appbar/app_bar_widget.dart';
import '../home/home_screen_widget.dart';
import '../search/appBar/search_app_abr_widget.dart';
import '../search/search_screen_widget.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _widgetBodyOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationItemWidget().item(image: 'home', title: 'Home'),
          BottomNavigationItemWidget().item(image: 'search', title: 'Procurar'),
          BottomNavigationItemWidget().item(image: 'star', title: 'Favoritos'),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        selectedItemColor: ColorsUtils.purpleNavigation,
        unselectedItemColor: ColorsUtils.grayNavigation,
      ),
    );
  }

  static const List<Widget> _widgetBodyOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
  ];

  static const List<Widget> _widgetAppBarOptions = <Widget>[
    AppBarHomeWidget(),
    AppBarSearchWidget(),
    AppBarFavoritesWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}