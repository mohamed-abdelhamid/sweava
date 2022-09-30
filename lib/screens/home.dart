import 'package:flutter/material.dart';
import 'package:sweava/screens/profile.dart';
import 'package:sweava/screens/basket.dart';
import 'package:sweava/screens/user_home.dart';

import 'favourites.dart';
import 'home_hidden_drawer.dart';

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
    Basket(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
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
                  // when basket is selected make sure to rerender the screen
                  if(index == 3) Navigator.pushNamed(context, 'basket');
                  else if (index == 2) Navigator.pushNamed(context, 'profile');
                  else setState(()=>currentIndex = index);
                },
                selectedItemColor: Color(0xffF26651),
                unselectedItemColor: Colors.black26,
                items:   [
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
