import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData? icon;
  final VoidCallback? onPress;

  RoundIconButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton( 
      elevation: 6, 
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
