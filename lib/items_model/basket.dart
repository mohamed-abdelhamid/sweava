import 'item.dart';

class BasketList{
  static double total = 0;

  void calculateTotal(){
    total = 0;
    basketItemsQuantity.forEach((item, quantity) => total += item.price*quantity );
  }
  static Map<Item,int> basketItemsQuantity = {};  // item: quantity
}