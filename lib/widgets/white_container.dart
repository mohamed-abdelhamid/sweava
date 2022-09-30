import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';

class WhiteContainer extends StatelessWidget {

  const WhiteContainer({Key? key, required this.containerName, required this.destination}) : super(key: key);
  final String containerName, destination;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8*SizeConfig.blockSizeVertical,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: GestureDetector(
        onTap: (){},
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5*SizeConfig.blockSizeHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(containerName,style: kTextStyle,),
              Icon(Icons.arrow_forward_ios,size: 5*SizeConfig.blockSizeHorizontal,)
            ],
          ),
        ),
      ),
    );
  }
}
