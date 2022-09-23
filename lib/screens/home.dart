import 'package:flutter/material.dart';
import 'package:sweava/screens/profile.dart';
import 'package:sweava/screens/shopping_cart.dart';
import 'package:sweava/screens/user_home.dart';

import 'favourites.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  List<Widget> navigationBarWidgets =[
    UserHome(),
    Favourites(),
    Profile(),
    ShoppingCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: navigationBarWidgets.elementAt(currentIndex),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                showSelectedLabels: false, // both prevent the app from freezing for some reason
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                elevation: 0, // to get rid of the shadow
                onTap: (index){
                  setState(()=>currentIndex = index);
                },
                selectedItemColor: Color(0xffF26651),
                unselectedItemColor: Colors.black26,
                items:  const [
                  BottomNavigationBarItem(icon: Icon(Icons.home,),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline,),label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: '',),
                ],
                currentIndex: currentIndex,
              ),
            ),
          )
        ],
      ),
    );
  }
}
