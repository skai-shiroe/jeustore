import 'package:flutter/material.dart';
import 'package:jeustore/models/jeu.dart';

class PopularGame extends StatelessWidget {
   PopularGame({super.key});

final List<Game> games=Game.games();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      //color: const Color.fromARGB(255, 6, 45, 65),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => print('on tap'),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(games[index].bgimage),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: games.length,
      ),
    );
  }
}