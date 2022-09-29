import 'package:flutter/material.dart';
import '../controllers/size_config.dart';
import '../constants.dart';
import '../items_model/basket.dart';
import '../widgets/custom-button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int selectedMethodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(2 * SizeConfig.blockSizeVertical),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 6 * SizeConfig.blockSizeHorizontal,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25 * SizeConfig.blockSizeHorizontal),
                    child: Text(
                      'Checkout',
                      textAlign: TextAlign.center,
                      style: kTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10 * SizeConfig.blockSizeHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping informtion',
                    style: kTextStyle.copyWith(
                        fontSize: 4 * SizeConfig.blockSizeHorizontal),
                  ),
                  Text(
                    'change',
                    style: kTextStyle.copyWith(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeVertical,
                  horizontal: 10 * SizeConfig.blockSizeHorizontal),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeVertical),
              height: 0.22 * SizeConfig.screenHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.all(2 * SizeConfig.blockSizeVertical),
                        child: Icon(Icons.person_outline),
                      ),
                      Text(
                        'Rosina Doe',
                        style: kWritingStyle.copyWith(color: Colors.grey[600]),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.all(2 * SizeConfig.blockSizeVertical),
                        child: Icon(Icons.location_on_outlined),
                      ),
                      Flexible(
                          child: Text(
                        '43 Oxford Road M13 4GR Manchester, UK',
                        style: kWritingStyle.copyWith(color: Colors.grey[600]),
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.all(2 * SizeConfig.blockSizeVertical),
                        child: Icon(Icons.phone_outlined),
                      ),
                      Text(
                        '+234 9011039271',
                        style: kWritingStyle.copyWith(color: Colors.grey[600]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10 * SizeConfig.blockSizeHorizontal),
              child: Row(
                children: [
                  Text(
                    'Payment method',
                    style: kTextStyle.copyWith(
                        fontSize: 4 * SizeConfig.blockSizeHorizontal),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeVertical,
                  horizontal: 10 * SizeConfig.blockSizeHorizontal),
              height: 0.3 * SizeConfig.screenHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RadioListTile<int>(
                    value: 0,
                    groupValue: selectedMethodIndex,
                    onChanged: (value) => setState(() {
                      selectedMethodIndex = value!;
                    }),
                    title: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 2 * SizeConfig.blockSizeVertical),
                          child: Image.asset(
                            'assets/images/visa.png',
                            width: 15 * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                        Text(
                          '**** **** **** 1234',
                          style: kSmallFont.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  RadioListTile<int>(
                    value: 1,
                    groupValue: selectedMethodIndex,
                    onChanged: (value) => setState(() {
                      selectedMethodIndex = value!;
                    }),
                    title: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 2 * SizeConfig.blockSizeVertical),
                          child: Image.asset(
                            'assets/images/master.png',
                            width: 15 * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                        Text(
                          '**** **** **** 1234',
                          style: kSmallFont.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  RadioListTile<int>(
                    value: 2,
                    groupValue: selectedMethodIndex,
                    onChanged: (value) => setState(() {
                      selectedMethodIndex = value!;
                    }),
                    title: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 2 * SizeConfig.blockSizeVertical),
                          child: Image.asset(
                            'assets/images/bank.png',
                            width: 15 * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                        Text(
                          '**** **** **** 1234',
                          style: kSmallFont.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15 * SizeConfig.blockSizeHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 4 * SizeConfig.blockSizeHorizontal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ ${BasketList.total}',
                    style: kTextStyle.copyWith(color: Color(0xffF26651)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical,bottom: 2*SizeConfig.blockSizeVertical),
              child: CustomButton(
                buttonColor: Color(0xffF26651),
                text: 'Confirm and pay',
                textColor: Colors.white,
                onPressed: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    expand: false,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(22.0)),
                    ),
                    builder: (context) => BottomSheet(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.55*SizeConfig.screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10 * SizeConfig.blockSizeHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Confirm and pay',
                  style: kWritingStyle.copyWith(color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      'Products: ',
                      style: kTextStyle.copyWith(color: Colors.grey[600]),
                    ),
                    Text(
                      '${BasketList.basketItemsQuantity.length}',
                      style: kTextStyle.copyWith(color: Color(0xffF26651)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10*SizeConfig.blockSizeHorizontal),
            child: Container(
              height: 25*SizeConfig.blockSizeVertical,
              decoration: BoxDecoration(
                color: Color(0xffD6D9E0),
                border: Border.all(width: 0.3,color: Colors.grey),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3 * SizeConfig.blockSizeHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My credit card',
                          style: kWritingStyle.copyWith(color: Colors.black),
                        ),
                        Image.asset(
                          'assets/images/visa.png',
                          width: 15 * SizeConfig.blockSizeHorizontal,
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3*SizeConfig.blockSizeHorizontal),
                    child: Text('**** **** **** 1234',style: kTextStyle.copyWith(fontSize: 8*SizeConfig.blockSizeHorizontal),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3 * SizeConfig.blockSizeHorizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rosina Doe',
                          style: kWritingStyle.copyWith(color: Colors.grey[700]),
                        ),
                        Text(
                          '04/26',
                          style: kWritingStyle.copyWith(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10*SizeConfig.blockSizeHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',style: TextStyle(fontSize: 4*SizeConfig.blockSizeHorizontal,fontWeight: FontWeight.bold),),
                Text('\$ ${BasketList.total}',style: kTextStyle.copyWith(color: Color(0xffF26651)),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: SizeConfig.blockSizeVertical),
            child: CustomButton(
              buttonColor: Color(0xffF26651),
              text: 'Pay now',
              textColor: Colors.white,
              onPressed: ()=>Navigator.pushNamed(context, 'home'),
            ),
          ),
        ],
      ),
    );
  }
}
