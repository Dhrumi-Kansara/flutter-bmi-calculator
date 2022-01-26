import 'package:flutter/material.dart';

const EdgeInsets reuseableCardMargin = EdgeInsets.all(15);
BorderRadius reuseableCardBorderRadius = BorderRadius.circular(10);

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onTapCard;

  ReuseableCard({required this.colour, this.cardChild, this.onTapCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        margin: reuseableCardMargin,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: reuseableCardBorderRadius,
        ),
        child: cardChild,
      ),
    );
  }
}
