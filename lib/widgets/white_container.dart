import 'package:flutter/material.dart';

class WhiteContainer extends StatelessWidget {

  const WhiteContainer({required this.height,required this.child,Key? key}) : super(key: key);
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: child,
    );
  }
}
