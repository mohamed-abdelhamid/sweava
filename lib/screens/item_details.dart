import 'package:flutter/material.dart';
import 'package:sweava/constants.dart';
import 'package:sweava/controllers/size_config.dart';
import 'package:sweava/widgets/custom-button.dart';

import '../items_model/item_list.dart';
import '../widgets/wheel_listview.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({required this.index, Key? key}) : super(key: key);
  final int index;
  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isFavourite = false;
  int selectedItemIndex = 0;
  int selectedItemColor = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 3 * SizeConfig.blockSizeVertical,
                left: 3 * SizeConfig.blockSizeVertical,
                right: 3 * SizeConfig.blockSizeVertical,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 6 * SizeConfig.blockSizeHorizontal,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_outline,
                      color: isFavourite ? Color(0xffF26651) : Colors.black,
                      size: 6 * SizeConfig.blockSizeHorizontal,
                    ),
                    onPressed: () {
                      setState(() => isFavourite = !isFavourite);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.25 * SizeConfig.screenHeight,
              child: MyListWheelScrollView(
                scrollDirection: Axis.horizontal,
                itemExtent: 0.25 * SizeConfig.screenHeight,
                diameterRatio: 1.8,
                onSelectedItemChanged: (selectedIndex) {
                  setState(() {
                    selectedItemIndex = selectedIndex;
                  });
                },
                squeeze: 0.9,
                children: [
                  ...Items.items[widget.index].imageList.map(
                    (imageName) => Image.asset(
                      'assets/images/$imageName',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4 * SizeConfig.blockSizeVertical,
              child: ListView.builder(
                itemCount: Items.items[widget.index].imageList.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 0.4 * SizeConfig.screenWidth),
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.blockSizeHorizontal,
                      bottom: SizeConfig.blockSizeHorizontal,
                    ),
                    child: i == selectedItemIndex
                        ? Icon(
                            Icons.radio_button_checked,
                            size: 5 * SizeConfig.blockSizeHorizontal,
                            color: Color(0xffF26651),
                          )
                        : Icon(
                            Icons.circle,
                            size: 2 * SizeConfig.blockSizeHorizontal,
                            color: Colors.grey,
                          ),
                  );
                },
              ),
            ),
            Container(
              height: 0.58 * SizeConfig.screenHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(22.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              padding:
                  EdgeInsets.symmetric(horizontal: 8 * SizeConfig.blockSizeHorizontal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${Items.items[widget.index].name} ${Items.items[widget.index].type}',
                    style: kTextStyle.copyWith(
                      fontSize: 6 * SizeConfig.blockSizeHorizontal,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical,),
                  Row(
                    children: [
                      Text('Colors',style: kTextStyle,textAlign: TextAlign.left,),
                    ],
                  ),
                  SizedBox(
                    height: 5*SizeConfig.blockSizeVertical,
                    child: ListView.builder(
                      itemCount: Items.items[widget.index].itemColors.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,i)=>
                            GestureDetector(
                              onTap: (){
                                setState((){
                                  selectedItemColor = i;
                                });
                              },
                              child: Container(
                                width: 0.25*SizeConfig.screenWidth,
                                margin: EdgeInsets.symmetric(
                                    horizontal:SizeConfig.blockSizeHorizontal,
                                    vertical: 0.1*SizeConfig.blockSizeVertical
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: selectedItemColor == i ? Border.all(color: Color(0xffF26651),width: 1.0): null,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.circle,color: Items.items[widget.index].itemColors.values.elementAt(i),size: 5*SizeConfig.blockSizeHorizontal),
                                    Text(Items.items[widget.index].itemColors.keys.elementAt(i),style: kSmallFont.copyWith(fontWeight: FontWeight.bold,color: Colors.black),),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical,),
                  Row(
                    children: [
                      Text('Get Apple TV+ free for a year',style: kTextStyle,textAlign: TextAlign.left,),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: Text('Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',style: kSmallFont,)),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Text('Full description',style: kTextStyle.copyWith(color: Color(0xffF26651),fontSize: 4*SizeConfig.blockSizeHorizontal),textAlign: TextAlign.left,),
                        SizedBox(width: 2*SizeConfig.blockSizeHorizontal,),
                        Icon(Icons.arrow_forward,color: Color(0xffF26651),size: 6*SizeConfig.blockSizeHorizontal,)
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',style: TextStyle(fontSize: 4*SizeConfig.blockSizeHorizontal,fontWeight: FontWeight.bold),),
                      Text('\$ ${Items.items[widget.index].price}',style: kTextStyle.copyWith(color: Color(0xffF26651)),),
                    ],
                  ),
                  CustomButton(
                      buttonColor: Color(0xffF26651), text: 'Add to basket', textColor: Colors.white, destination: 'home',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
