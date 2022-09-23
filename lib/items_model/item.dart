import 'dart:ui';

class Item{
  final String name, type, offerHeadline, offerDescription;
  final double price;
  final List<String> imageList;
  final Map<String,Color> itemColors;

  Item({required this.offerHeadline,required this.offerDescription,required this.itemColors,  required this.name,required this.type,required this.price, required this.imageList});


}