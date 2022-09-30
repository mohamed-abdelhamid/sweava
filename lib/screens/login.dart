import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweava/widgets/custom-button.dart';

import '../constants.dart';
import '../controllers/size_config.dart';
import '../widgets/text-input.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            height: SizeConfig.screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10 * SizeConfig.blockSizeVertical,
                  ),
                  child: Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      fontSize: 8 * SizeConfig.blockSizeVertical,
                      fontWeight: FontWeight.w500,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Color(0xffF26651),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.66 * SizeConfig.screenHeight,
                  decoration: BoxDecoration(
                    color: Color(0xffE5E5E5) ,
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 5 * SizeConfig.blockSizeVertical,
                      horizontal: 5 * SizeConfig.blockSizeHorizontal),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Login',
                        style: kTextStyle.copyWith(fontSize: 6*SizeConfig.blockSizeHorizontal,color: Colors.black),
                      ),

                      UserTextInput(
                        fieldName: 'Email',
                        aheadIcon: Icon(Icons.mail_outline_rounded),
                        isPassword: false,
                        keyboardType: TextInputType.emailAddress,
                        suffixWidget: false,
                      ),
                      UserTextInput(
                        fieldName: 'Password',
                        aheadIcon: Icon(Icons.lock_outline_rounded),
                        isPassword: true,
                        keyboardType: TextInputType.text,
                        suffixWidget: true,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forget passcode?',
                          style: kWritingStyle,
                        ),
                      ),
                      SizedBox(width: 5*SizeConfig.blockSizeVertical,),
                      CustomButton(
                          buttonColor: Color(0xffF26651),
                          text: 'Login',
                          textColor: Colors.white,
                          onPressed: ()=>Navigator.pushNamed(context, 'home drawer'),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Create account',
                            style: kWritingStyle,
                          ),
                        ),
                      ),
                      SizedBox(width: 5*SizeConfig.blockSizeVertical,),
                    ],
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
