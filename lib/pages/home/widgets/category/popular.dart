import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class PopularSection extends StatelessWidget {
  PopularSection({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: () => print('on tap'),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Hero(
                      tag: games[index].name,
                      child: Image.asset(games[index].bgImage),
                    ),
                  ),
                ),
              ),
            )),
        separatorBuilder: ((c, i) => const SizedBox(width: 10)),
        itemCount: games.length,
      ),
    );
  }
}
