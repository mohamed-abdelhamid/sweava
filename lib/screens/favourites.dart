import 'package:flutter/material.dart';
import 'package:sweava/widgets/custom-button.dart';
import '../controllers/size_config.dart';
import '../constants.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(top:2*SizeConfig.blockSizeVertical),
              child: Text('Favourites',textAlign: TextAlign.center,style: kTextStyle,),
            ),
            Image.asset('assets/images/favourite.png', width: double.infinity),
            Padding(
              padding:
              EdgeInsets.only(bottom: 2 * SizeConfig.blockSizeVertical),
              child: Text(
                'No favourites yet',
                style: kTextStyle.copyWith(
                    fontSize: 6 * SizeConfig.blockSizeHorizontal),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15*SizeConfig.blockSizeHorizontal),
              child: Text(
                'Hit the orange button down'
                'below to Create an order',
                style: kSmallFont,
                textAlign: TextAlign.center,
              )
            ),
            Padding(
              padding:  EdgeInsets.only(top: 3*SizeConfig.blockSizeVertical),
              child: CustomButton(
                buttonColor: Color(0xffF26651),
                text: 'Start ordering',
                textColor: Colors.white,
                onPressed: ()=>Navigator.pushNamed(context, 'home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
