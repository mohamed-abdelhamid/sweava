import 'package:flutter/material.dart';

import '../controllers/size_config.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor, textColor;
  final String text;
  final String destination;
  final double? width;

  const CustomButton({
    required this.buttonColor,
    required this.text,
    required this.textColor,
    this.width,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    double hBlock, vBlock;
    SizeConfig();
    hBlock = SizeConfig.blockSizeHorizontal;
    vBlock = SizeConfig.blockSizeVertical;
    return Container(
      height: 8 * vBlock,
      width: width ?? 0.75 * SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, destination),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor,
              fontSize: 4.5 * hBlock,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
