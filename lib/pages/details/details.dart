import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/details/widgets/details_sliver.dart';
import 'package:gamestore/pages/details/widgets/info.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailsSliverDelegate(
              game: game,
              expandedHeight: 300,
              roundedContainerHeight: 30,
            )
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          ),
        ],
      ),
    );
  }
}
