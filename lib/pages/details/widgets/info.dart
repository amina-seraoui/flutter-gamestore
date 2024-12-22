import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/details/widgets/description.dart';
import 'package:gamestore/pages/details/widgets/gallery.dart';
import 'package:gamestore/pages/details/widgets/header.dart';
import 'package:gamestore/pages/details/widgets/review.dart';

class GameInfo extends StatelessWidget {
  const GameInfo(this.game, {super.key});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game),
        ],
      ),
    );
  }
}
