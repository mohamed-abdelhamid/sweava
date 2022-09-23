import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';
import 'package:sweava/screens/item_details.dart';
import '../items_model/item_list.dart';

class ItemList extends StatelessWidget {
  ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ListView.builder(
        itemCount: Items.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen(index: index),),),
          child: SizedBox(
            height: constraints.maxHeight,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 6 * SizeConfig.blockSizeVertical,
                    bottom: SizeConfig.blockSizeVertical,
                    left: 6 * SizeConfig.blockSizeHorizontal,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 50 * SizeConfig.blockSizeHorizontal,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 15 * SizeConfig.blockSizeVertical),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            Items.items[index].name,
                            textAlign: TextAlign.center,
                            style: kTextStyle,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: SizeConfig.blockSizeVertical,
                            ),
                            child: Text(
                              Items.items[index].type,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 3.5 * SizeConfig.blockSizeHorizontal,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '\$ ${Items.items[index].price.toInt()}',
                              style: kSmallFont.copyWith(
                                color: Color(0xff5956E9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2*SizeConfig.blockSizeHorizontal,
                    left: 14 * SizeConfig.blockSizeHorizontal,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 9 * SizeConfig.blockSizeVertical,
                    child: Image.asset(
                      'assets/images/${Items.items[index].imageList[0]}',
                      height: 16 * SizeConfig.blockSizeVertical,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
