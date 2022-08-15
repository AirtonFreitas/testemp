import 'package:flutter/material.dart';
import 'package:testmp/ui/favorites/components/card_favorites.dart';
import 'appBar/favorites_app_abr_widget.dart';

class BodyFavorite extends StatelessWidget {
  const BodyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBarFavoritesWidget(),
        Padding(
          padding: EdgeInsets.all(22),
          child: CardFavorites(),
        ),
      ],
    );
  }
}
