import 'package:flutter/material.dart';
import '../controllers/size_config.dart';
import '../constants.dart';
import '../items_model/basket.dart';
import '../widgets/custom-button.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {

  bool empty = BasketList.basketItemsQuantity.isEmpty ? true : false;


  @override
  void initState() {
    super.initState();
    empty == false ? BasketList().calculateTotal() : null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.all(2*SizeConfig.blockSizeVertical),
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
                  Text('Basket',textAlign: TextAlign.center,style: kTextStyle,),
                  IconButton(
                    icon: Icon(
                      Icons.delete_outlined,
                      color: Color(0xffF26651),
                      size: 6 * SizeConfig.blockSizeHorizontal,
                    ),
                    onPressed: () => setState((){
                      BasketList.basketItemsQuantity.clear();
                      empty = true;
                    }),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15*SizeConfig.blockSizeHorizontal),
              height: 5*SizeConfig.blockSizeVertical,
              decoration: BoxDecoration(
                color: Color(0xffD3F2FF),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.notifications_outlined,size: 6 * SizeConfig.blockSizeHorizontal,),
                  Flexible(
                    child: Text('Delivery for FREE until the end of the month',style: TextStyle(
                        fontSize: 3*SizeConfig.blockSizeHorizontal,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.65*SizeConfig.screenHeight,
              margin: EdgeInsets.symmetric(horizontal: 5*SizeConfig.blockSizeHorizontal),
              padding: EdgeInsets.symmetric(vertical: 3*SizeConfig.blockSizeHorizontal,horizontal: 4*SizeConfig.blockSizeHorizontal),
              child: ListView.builder(
                itemCount: BasketList.basketItemsQuantity.length,
                  itemBuilder: (context,index)=> Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical),
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeVertical),
                    height: 0.18*SizeConfig.screenHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/images/${BasketList.basketItemsQuantity.keys.elementAt(index).imageList.first}',
                          height: 0.15*SizeConfig.screenHeight,
                          width: 0.15*SizeConfig.screenHeight,
                        ),
                        SizedBox(width: SizeConfig.blockSizeHorizontal,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('${BasketList.basketItemsQuantity.keys.elementAt(index).name} ${BasketList.basketItemsQuantity.keys.elementAt(index).type}',style: kTextStyle.copyWith(fontSize: 4*SizeConfig.blockSizeHorizontal),),
                              Text('\$ ${BasketList.basketItemsQuantity.keys.elementAt(index).price}',style: kTextStyle.copyWith(color: Color(0xffF26651)),),
                              Row(
                                children: [
                                  Text('Quantity',style: kSmallFont,),
                                  Container(
                                    width: 4*SizeConfig.blockSizeHorizontal,
                                    height: 4*SizeConfig.blockSizeHorizontal,
                                    margin: EdgeInsets.symmetric(horizontal:2*SizeConfig.blockSizeHorizontal),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF26651),
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: (){
                                          setState((){
                                            // decrease amount
                                            BasketList.basketItemsQuantity.update(BasketList.basketItemsQuantity.keys.elementAt(index), (value) => value > 1 ? value-1 : value);
                                            BasketList().calculateTotal();
                                          });
                                        },
                                        child: Icon(Icons.remove_outlined,color: Colors.white,size: 3*SizeConfig.blockSizeHorizontal,),
                                      ),
                                    ),
                                  ),
                                  Text(BasketList.basketItemsQuantity.values.elementAt(index).toString(),),
                                  Container(
                                    width: 4*SizeConfig.blockSizeHorizontal,
                                    height: 4*SizeConfig.blockSizeHorizontal,
                                    margin: EdgeInsets.symmetric(horizontal:2*SizeConfig.blockSizeHorizontal),
                                    decoration: BoxDecoration(
                                      color: Color(0xffF26651),
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: (){
                                          setState((){
                                            BasketList.basketItemsQuantity.update(BasketList.basketItemsQuantity.keys.elementAt(index), (value) => value+1);
                                            BasketList().calculateTotal();
                                          });
                                        },
                                        child: Icon(Icons.add,color: Colors.white,size: 3*SizeConfig.blockSizeHorizontal,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical,),
            empty ? Container()
            :Padding(
              padding: EdgeInsets.symmetric(horizontal: 15*SizeConfig.blockSizeHorizontal),
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
                text: 'Checkout',
                textColor: Colors.white,
                onPressed: ()=>Navigator.pushNamed(context, 'checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
