import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection(this.game, {super.key});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        game.description,
        trimLines: 2,
        colorClickableText: const Color(0xFF5F67EA),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: ' Show less',
        style: const TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
