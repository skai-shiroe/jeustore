import 'package:flutter/material.dart';
import 'package:jeustore/models/jeu.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  final Game game;
  const DescriptionSection(this.game, {super.key});

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
        trimCollapsedText: 'more',
        trimExpandedText: ' reduire',
        style: TextStyle(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }
}
