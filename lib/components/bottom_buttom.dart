import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String buttonText;

  BottomButton({this.onTap, this.buttonText = ""});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kBottomContainerColor,
        margin: kBottomContainerMargin,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15),
        child: Text(
          buttonText,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
