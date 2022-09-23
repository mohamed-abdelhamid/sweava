import 'dart:ui';

import 'item.dart';

class Items {
  static List<Item> items = [
    Item(
      name: 'Apple Watch',
      type: 'Series 6 :Red',
      price: 395,
      imageList: ['item1.png','item1.png','item1.png','item1.png',],
      offerHeadline: 'Get Apple TV+ free for a year',
      offerDescription: 'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
      itemColors: {
        'Sky Blue':Color(0xff7485C1),
        'Rose Gold':Color(0xffC9A19C),
        'Green':Color(0xffA1C89B),
      },
    ),
    Item(
      name: 'Samsung Galaxy Watch',
      type: 'Active :Green',
      price: 159,
      imageList: ['item2.png','item2.png','item2.png','item2.png',],
      offerHeadline: 'Get Apple TV+ free for a year',
      offerDescription: 'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
      itemColors: {
        'Sky Blue':Color(0xff7485C1),
        'Rose Gold':Color(0xffC9A19C),
        'Green':Color(0xffA1C89B),
      },
    ),
    Item(
      name: '2020 Apple iPad',
      type: 'Air 10.9',
      price: 579,
      imageList: ['item3.png','item3.png','item3.png','item3.png',],
      offerHeadline: 'Get Apple TV+ free for a year',
      offerDescription: 'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
      itemColors: {
        'Sky Blue':Color(0xff7485C1),
        'Rose Gold':Color(0xffC9A19C),
        'Green':Color(0xffA1C89B),
      },
    ),
  ];
}
