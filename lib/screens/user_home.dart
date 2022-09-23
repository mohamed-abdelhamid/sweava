import 'package:flutter/material.dart';
import 'package:sweava/controllers/size_config.dart';
import 'package:sweava/widgets/search_item.dart';

import '../constants.dart';
import '../widgets/home_main_menu.dart';
import '../widgets/item_list.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isSearching = false;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        key: _key,
        drawer: Drawer(),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3 * SizeConfig.blockSizeVertical),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/drawer.png',
                          width: 5 * SizeConfig.blockSizeHorizontal),
                      onPressed: () => _key.currentState!.openDrawer(),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.blockSizeHorizontal,
                    ),
                    Container(
                      width: 60 * SizeConfig.blockSizeHorizontal,
                      height: 7 * SizeConfig.blockSizeVertical,
                      child: TextField(
                        style: kTextStyle,
                        onChanged: (input){
                          setState((){
                            isSearching = input != '' ? true : false;
                          });
                        },
                        decoration: InputDecoration(
                          label: Text('Search'),
                          labelStyle: TextStyle(fontWeight: FontWeight.w100),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              isSearching ? SearchItem(): MainMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
