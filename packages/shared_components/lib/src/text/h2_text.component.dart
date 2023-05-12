import 'package:flutter/material.dart';

class H2TextComponent extends StatelessWidget {
  const H2TextComponent(
      {Key? key,
      this.text = 'Some text',
      this.rightValue = 0.0,
      this.leftValue = 0.0,
      this.topValue = 0.0,
      this.bottomValue = 0.0})
      : super(key: key);

  final String text;
  final double rightValue;
  final double topValue;
  final double leftValue;
  final double bottomValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: topValue,
            bottom: bottomValue,
            left: leftValue,
            right: rightValue),
        child: Text(text, style: Theme.of(context).textTheme.headline2));
  }
}
