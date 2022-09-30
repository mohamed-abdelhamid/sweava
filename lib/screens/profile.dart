import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';
import 'package:sweava/widgets/white_container.dart';

import '../user_model/user.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final User _user = User();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Stack(
          children: [
            Padding(padding: EdgeInsets.only(
              top: 4*SizeConfig.blockSizeVertical,
              left: 2*SizeConfig.blockSizeHorizontal,
            ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 6 * SizeConfig.blockSizeHorizontal,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Padding(padding: EdgeInsets.only(
              top: 11*SizeConfig.blockSizeVertical,
              left: 10*SizeConfig.blockSizeHorizontal,
            ),
              child: Text('My profile',style: kTextStyle.copyWith(fontSize: 8*SizeConfig.blockSizeHorizontal),),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20*SizeConfig.blockSizeVertical,
                left: 10*SizeConfig.blockSizeHorizontal,
                right: 10*SizeConfig.blockSizeHorizontal,
              ),
              height: 20*SizeConfig.blockSizeVertical,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 27.5*SizeConfig.blockSizeVertical
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_user.name,style: kTextStyle,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 13*SizeConfig.blockSizeVertical,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 9 * SizeConfig.blockSizeVertical,
                    child: Image.asset(
                      _user.profilePicPath,
                      height: 10 * SizeConfig.blockSizeVertical,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 31*SizeConfig.blockSizeVertical,
                left: 20*SizeConfig.blockSizeHorizontal,
              ),
              child: Icon(Icons.location_on_outlined,size: 7*SizeConfig.blockSizeHorizontal,),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 31*SizeConfig.blockSizeVertical,
                  left: 30*SizeConfig.blockSizeHorizontal
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_user.address['street'].toString(),style: kSmallFont.copyWith(color: Colors.grey[700]),),
                  Text(_user.address['district'].toString(),style: kSmallFont.copyWith(color: Colors.grey[700]),),
                  Text(_user.address['city'].toString(),style: kSmallFont.copyWith(color: Colors.grey[700]),),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 42*SizeConfig.blockSizeVertical,
                  left: 10*SizeConfig.blockSizeHorizontal,
                  right: 10*SizeConfig.blockSizeHorizontal
                ),
              child: WhiteContainer(destination: '',containerName: 'Edit Profile'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 52*SizeConfig.blockSizeVertical,
                  left: 10*SizeConfig.blockSizeHorizontal,
                  right: 10*SizeConfig.blockSizeHorizontal
              ),
              child: WhiteContainer(destination: '',containerName: 'Shopping address'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 62*SizeConfig.blockSizeVertical,
                  left: 10*SizeConfig.blockSizeHorizontal,
                  right: 10*SizeConfig.blockSizeHorizontal
              ),
              child: WhiteContainer(destination: '',containerName: 'Order history'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 72*SizeConfig.blockSizeVertical,
                  left: 10*SizeConfig.blockSizeHorizontal,
                  right: 10*SizeConfig.blockSizeHorizontal
              ),
              child: WhiteContainer(destination: '',containerName: 'Cards'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 82*SizeConfig.blockSizeVertical,
                  left: 10*SizeConfig.blockSizeHorizontal,
                  right: 10*SizeConfig.blockSizeHorizontal
              ),
              child: WhiteContainer(destination: '',containerName: 'Notifications'),
            ),

          ],
        ),
      ),
    );
  }
}
