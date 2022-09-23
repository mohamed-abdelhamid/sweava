import 'package:flutter/material.dart';
import 'package:sweava/controllers/size_config.dart';

import '../constants.dart';
import 'item_list.dart';



class MainMenu extends StatelessWidget {

  List<String> categories = [
    'Wearable',
    'Laptops',
    'Phones',
    'Drones',
    'Accessories'
  ];

  MainMenu({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15 * SizeConfig.blockSizeHorizontal,
              vertical: 5 * SizeConfig.blockSizeVertical),
          child: Text(
            'Order online'
                ' collect in store',
            style: kTextStyle.copyWith(
                fontSize: 9 * SizeConfig.blockSizeHorizontal),
          ),
        ),
        DefaultTabController(
          length: categories.length,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                padding: EdgeInsets.symmetric(
                    horizontal: 3 * SizeConfig.blockSizeHorizontal),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color(0xffF26651),
                tabs: categories
                    .map((title) => Tab(
                  child: Text(
                    title,
                    style: kWritingStyle.copyWith(
                        fontSize:
                        4 * SizeConfig.blockSizeHorizontal),
                  ),
                ))
                    .toList(),
              ),
              Container(
                width: double.infinity,
                height: 40 * SizeConfig.blockSizeVertical,
                child: TabBarView(
                  children: [
                    ItemList(),
                    ItemList(),
                    ItemList(),
                    ItemList(),
                    ItemList(),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:2* SizeConfig.blockSizeVertical),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'see more  ',
                      style: kSmallFont.copyWith(
                        color: Color(0xff5956E9),
                      ),
                    ),
                    Icon(Icons.arrow_forward,color: const Color(0xff5956E9),size: 4.5*SizeConfig.blockSizeHorizontal,),
                    SizedBox(width: 4*SizeConfig.blockSizeHorizontal,)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
