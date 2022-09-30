import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';
import 'package:sweava/screens/profile.dart';
import 'package:sweava/screens/user_home.dart';

import 'home.dart';

class HomeHiddenDrawer extends StatefulWidget {
  const HomeHiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HomeHiddenDrawer> createState() => _HomeHiddenDrawerState();
}

class _HomeHiddenDrawerState extends State<HomeHiddenDrawer> {

  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.black,
          selectedStyle: kWritingStyle.copyWith(color: Colors.white,fontSize: 7*SizeConfig.blockSizeHorizontal),
          baseStyle: kDropStyle.copyWith(color: Colors.white,fontSize: 6*SizeConfig.blockSizeHorizontal),
          name: 'Home',
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.black,
          selectedStyle: kWritingStyle.copyWith(color: Colors.white,fontSize: 7*SizeConfig.blockSizeHorizontal),
          baseStyle: kDropStyle.copyWith(color: Colors.white,fontSize: 6*SizeConfig.blockSizeHorizontal),
          name: 'My orders',
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.black,
          selectedStyle: kWritingStyle.copyWith(color: Colors.white,fontSize: 7*SizeConfig.blockSizeHorizontal),
          baseStyle: kDropStyle.copyWith(color: Colors.white,fontSize: 6*SizeConfig.blockSizeHorizontal),
          name: 'Favourites',
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.black,
          selectedStyle: kWritingStyle.copyWith(color: Colors.white,fontSize: 7*SizeConfig.blockSizeHorizontal),
          baseStyle: kDropStyle.copyWith(color: Colors.white,fontSize: 6*SizeConfig.blockSizeHorizontal),
          name: 'Delivery',
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.black,
          selectedStyle: kWritingStyle.copyWith(color: Colors.white,fontSize: 7*SizeConfig.blockSizeHorizontal),
          baseStyle: kDropStyle.copyWith(color: Colors.white,fontSize: 6*SizeConfig.blockSizeHorizontal),
          name: 'Settings',
        ),
        Home(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  HiddenDrawerMenu(
          screens: _screens,
          backgroundColorMenu: Colors.indigoAccent,
          backgroundColorAppBar: Color(0xffE5E5E5),
          elevationAppBar: 0,
          initPositionSelected: 0,
          disableAppBarDefault: true,
          isDraggable: true,
          slidePercent: 70,
          contentCornerRadius: 22.0,
          enableCornerAnimation: true,
          verticalScalePercent: 70,
          withShadow: true,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              blurStyle: BlurStyle.inner,
              offset: Offset(-20, 20), // changes position of shadow
            ),
          ],
        ),
      );
  }
}
