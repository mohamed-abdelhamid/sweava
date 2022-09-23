import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/not found.png', width: double.infinity),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: 2 * SizeConfig.blockSizeVertical),
          child: Text(
            'Item not found',
            style: kTextStyle.copyWith(
                fontSize: 6 * SizeConfig.blockSizeHorizontal),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15*SizeConfig.blockSizeHorizontal),
          child: Text(
            'Try a more generic search term or try looking for alternative products.',
            style: kSmallFont,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
