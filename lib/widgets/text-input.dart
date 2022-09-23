import 'package:flutter/material.dart';

import '../constants.dart';
import '../controllers/size_config.dart';

class UserTextInput extends StatefulWidget {
  final String fieldName;
  final Icon? aheadIcon;
  bool? isPassword;
  final TextInputType? keyboardType;
  final bool suffixWidget;

  UserTextInput(
      {required this.fieldName,
      this.aheadIcon,
      this.keyboardType,
      this.isPassword,
      required this.suffixWidget});

  @override
  State<UserTextInput> createState() => _UserTextInputState();
}

class _UserTextInputState extends State<UserTextInput> {

  late bool isPassword;

  @override
  void initState() {
    super.initState();
    isPassword = widget.isPassword ?? false;
  }

  @override
  Widget build(BuildContext context) {
    double vBlock, hBlock;
    SizeConfig();
    vBlock = SizeConfig.blockSizeVertical;
    hBlock = SizeConfig.blockSizeHorizontal;

    return Container(
      height: 6.5 * vBlock,
      width: 0.75*SizeConfig.screenWidth,
      child: TextField(
        maxLength: 30,
        obscureText: isPassword,
        style: kTextStyle,
        keyboardType:
            widget.keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: widget.suffixWidget
              ? TextButton(
                  onPressed: (){
                    setState(()=>isPassword = !isPassword);
                  } ,
                  child:Text('show',style: kTextStyle.copyWith(color: Colors.blue),) ,
                )
              : null,
          hintText: widget.fieldName,
          prefixIcon: widget.aheadIcon ?? null,
          hintStyle: kTextStyle.copyWith(
            height: 1.3,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
          counterText: '',
        ),
      ),
    );
  }
}
